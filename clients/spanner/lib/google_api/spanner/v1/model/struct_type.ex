# Copyright 2019 Google LLC
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

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Spanner.V1.Model.StructType do
  @moduledoc """
  `StructType` defines the fields of a STRUCT type.

  ## Attributes

  *   `fields` (*type:* `list(GoogleApi.Spanner.V1.Model.Field.t)`, *default:* `nil`) - The list of fields that make up this struct. Order is
      significant, because values of this struct type are represented as
      lists, where the order of field values matches the order of
      fields in the StructType. In turn, the order of fields
      matches the order of columns in a read request, or the order of
      fields in the `SELECT` clause of a query.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fields => list(GoogleApi.Spanner.V1.Model.Field.t())
        }

  field(:fields, as: GoogleApi.Spanner.V1.Model.Field, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.StructType do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.StructType.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.StructType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
