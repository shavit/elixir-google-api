# Copyright 2019 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

defmodule GoogleApis.Generator.ElixirGenerator.Model do
  @moduledoc """
  A model is a resource type that is used by the API.
  """

  @type t :: %__MODULE__{
          :name => String.t(),
          :description => String.t(),
          :properties => list(Property.t()),
          :schema => JsonSchema.t()
        }

  defstruct [:name, :description, :properties, :schema]

  alias GoogleApi.Discovery.V1.Model.JsonSchema
  alias GoogleApis.Generator.ElixirGenerator.{Property, ResourceContext}

  @doc """
  Returns the name of the file that should be generated.
  """
  @spec filename(t) :: String.t()
  def filename(model) do
    "#{Macro.underscore(model.name)}.ex"
  end

  @doc """
  Returns a stringified value
  """
  @spec value_string(any()) :: String.t()
  def value_string(nil), do: "nil"
  def value_string(""), do: "\"\""
  def value_string(value), do: "#{value}"

  @doc """
  Returns a list of models parsed from a map of JsonSchemas
  """
  @spec from_schemas(%{optional(String.t()) => JsonSchema.t()}) :: list(t)
  def from_schemas(schemas) do
    Enum.flat_map(schemas, fn {name, schema} -> from_schema(name, schema) end)
  end

  @doc """
  Returns a list of schemas from a resource name and JsonSchema which may
  contain nested schemas
  """
  @spec from_schema(String.t(), JsonSchema.t()) :: list(t)
  def from_schema(name, schema) do
    context = ResourceContext.empty()

    from_schema(name, schema, context)
  end

  defp from_schema(name, schema = %JsonSchema{type: "object", properties: properties}, context)
       when not is_nil(properties) do
    property_models =
      Enum.flat_map(properties, fn {n, s} ->
        from_schema(n, s, ResourceContext.with_property(context, name))
      end)

    model = %__MODULE__{
      name: ResourceContext.name(context, name),
      description: schema.description,
      properties: [],
      schema: schema
    }

    [model | property_models]
  end

  defp from_schema(name, %JsonSchema{type: "array", items: items}, context) do
    from_schema(name, items, context)
  end

  defp from_schema(_, _, _), do: []

  @spec update_properties(t, ResourceContext.t()) :: t
  def update_properties(model, context) do
    model
    |> Map.put(
      :properties,
      Enum.map(model.schema.properties, fn {name, schema} ->
        Property.from_schema(schema, name, ResourceContext.with_property(context, model.name))
      end)
    )
    |> Map.put(:schema, nil)
  end
end
