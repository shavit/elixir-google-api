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

defmodule GoogleApi.TagManager.V2.Model.SyncStatus do
  @moduledoc """
  The status of a workspace after synchronization.

  ## Attributes

  *   `mergeConflict` (*type:* `boolean()`, *default:* `nil`) - Synchornization operation detected a merge conflict.
  *   `syncError` (*type:* `boolean()`, *default:* `nil`) - An error occurred during the synchronization operation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mergeConflict => boolean(),
          :syncError => boolean()
        }

  field(:mergeConflict)
  field(:syncError)
end

defimpl Poison.Decoder, for: GoogleApi.TagManager.V2.Model.SyncStatus do
  def decode(value, options) do
    GoogleApi.TagManager.V2.Model.SyncStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TagManager.V2.Model.SyncStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
