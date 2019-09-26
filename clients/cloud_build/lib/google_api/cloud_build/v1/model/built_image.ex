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

defmodule GoogleApi.CloudBuild.V1.Model.BuiltImage do
  @moduledoc """
  An image built by the pipeline.

  ## Attributes

  *   `digest` (*type:* `String.t`, *default:* `nil`) - Docker Registry 2.0 digest.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name used to push the container image to Google Container Registry, as
      presented to `docker push`.
  *   `pushTiming` (*type:* `GoogleApi.CloudBuild.V1.Model.TimeSpan.t`, *default:* `nil`) - Output only. Stores timing information for pushing the specified image.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :digest => String.t(),
          :name => String.t(),
          :pushTiming => GoogleApi.CloudBuild.V1.Model.TimeSpan.t()
        }

  field(:digest)
  field(:name)
  field(:pushTiming, as: GoogleApi.CloudBuild.V1.Model.TimeSpan)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V1.Model.BuiltImage do
  def decode(value, options) do
    GoogleApi.CloudBuild.V1.Model.BuiltImage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V1.Model.BuiltImage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
