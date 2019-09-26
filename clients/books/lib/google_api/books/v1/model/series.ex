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

defmodule GoogleApi.Books.V1.Model.Series do
  @moduledoc """


  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `books#series`) - Resource type.
  *   `series` (*type:* `list(GoogleApi.Books.V1.Model.SeriesSeries.t)`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t(),
          :series => list(GoogleApi.Books.V1.Model.SeriesSeries.t())
        }

  field(:kind)
  field(:series, as: GoogleApi.Books.V1.Model.SeriesSeries, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.Series do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.Series.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.Series do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
