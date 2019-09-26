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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1WebDetectionWebEntity do
  @moduledoc """
  Entity deduced from similar images on the Internet.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - Canonical description of the entity, in English.
  *   `entityId` (*type:* `String.t`, *default:* `nil`) - Opaque entity ID.
  *   `score` (*type:* `number()`, *default:* `nil`) - Overall relevancy score for the entity.
      Not normalized and not comparable across different image queries.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t(),
          :entityId => String.t(),
          :score => number()
        }

  field(:description)
  field(:entityId)
  field(:score)
end

defimpl Poison.Decoder,
  for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1WebDetectionWebEntity do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1WebDetectionWebEntity.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1WebDetectionWebEntity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
