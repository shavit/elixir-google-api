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

defmodule GoogleApi.Logging.V2.Model.SourceReference do
  @moduledoc """
  A reference to a particular snapshot of the source tree used to build and deploy an application.

  ## Attributes

  *   `repository` (*type:* `String.t`, *default:* `nil`) - Optional. A URI string identifying the repository. Example: "https://github.com/GoogleCloudPlatform/kubernetes.git"
  *   `revisionId` (*type:* `String.t`, *default:* `nil`) - The canonical and persistent identifier of the deployed revision. Example (git): "0035781c50ec7aa23385dc841529ce8a4b70db1b"
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :repository => String.t(),
          :revisionId => String.t()
        }

  field(:repository)
  field(:revisionId)
end

defimpl Poison.Decoder, for: GoogleApi.Logging.V2.Model.SourceReference do
  def decode(value, options) do
    GoogleApi.Logging.V2.Model.SourceReference.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Logging.V2.Model.SourceReference do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
