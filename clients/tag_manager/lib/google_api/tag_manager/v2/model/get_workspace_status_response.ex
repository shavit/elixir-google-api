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

defmodule GoogleApi.TagManager.V2.Model.GetWorkspaceStatusResponse do
  @moduledoc """
  The changes that have occurred in the workspace since the base container version.

  ## Attributes

  *   `mergeConflict` (*type:* `list(GoogleApi.TagManager.V2.Model.MergeConflict.t)`, *default:* `nil`) - The merge conflict after sync.
  *   `workspaceChange` (*type:* `list(GoogleApi.TagManager.V2.Model.Entity.t)`, *default:* `nil`) - Entities that have been changed in the workspace.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mergeConflict => list(GoogleApi.TagManager.V2.Model.MergeConflict.t()),
          :workspaceChange => list(GoogleApi.TagManager.V2.Model.Entity.t())
        }

  field(:mergeConflict, as: GoogleApi.TagManager.V2.Model.MergeConflict, type: :list)
  field(:workspaceChange, as: GoogleApi.TagManager.V2.Model.Entity, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.TagManager.V2.Model.GetWorkspaceStatusResponse do
  def decode(value, options) do
    GoogleApi.TagManager.V2.Model.GetWorkspaceStatusResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TagManager.V2.Model.GetWorkspaceStatusResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
