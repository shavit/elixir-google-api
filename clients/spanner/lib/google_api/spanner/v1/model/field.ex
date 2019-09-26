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

defmodule GoogleApi.Spanner.V1.Model.Field do
  @moduledoc """
  Message representing a single field of a struct.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the field. For reads, this is the column name. For
      SQL queries, it is the column alias (e.g., `"Word"` in the
      query `"SELECT 'hello' AS Word"`), or the column name (e.g.,
      `"ColName"` in the query `"SELECT ColName FROM Table"`). Some
      columns might have an empty name (e.g., !"SELECT
      UPPER(ColName)"`). Note that a query result can contain
      multiple fields with the same name.
  *   `type` (*type:* `GoogleApi.Spanner.V1.Model.Type.t`, *default:* `nil`) - The type of the field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t(),
          :type => GoogleApi.Spanner.V1.Model.Type.t()
        }

  field(:name)
  field(:type, as: GoogleApi.Spanner.V1.Model.Type)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.Field do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.Field.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.Field do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
