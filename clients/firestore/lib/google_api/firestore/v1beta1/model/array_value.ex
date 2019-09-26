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

defmodule GoogleApi.Firestore.V1beta1.Model.ArrayValue do
  @moduledoc """
  An array value.

  ## Attributes

  *   `values` (*type:* `list(GoogleApi.Firestore.V1beta1.Model.Value.t)`, *default:* `nil`) - Values in the array.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :values => list(GoogleApi.Firestore.V1beta1.Model.Value.t())
        }

  field(:values, as: GoogleApi.Firestore.V1beta1.Model.Value, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1beta1.Model.ArrayValue do
  def decode(value, options) do
    GoogleApi.Firestore.V1beta1.Model.ArrayValue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1beta1.Model.ArrayValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
