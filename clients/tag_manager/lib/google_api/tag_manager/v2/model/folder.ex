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

defmodule GoogleApi.TagManager.V2.Model.Folder do
  @moduledoc """
  Represents a Google Tag Manager Folder.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - GTM Account ID.
  *   `containerId` (*type:* `String.t`, *default:* `nil`) - GTM Container ID.
  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - The fingerprint of the GTM Folder as computed at storage time. This value is recomputed whenever the folder is modified.
  *   `folderId` (*type:* `String.t`, *default:* `nil`) - The Folder ID uniquely identifies the GTM Folder.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Folder display name.
  *   `notes` (*type:* `String.t`, *default:* `nil`) - User notes on how to apply this folder in the container.
  *   `path` (*type:* `String.t`, *default:* `nil`) - GTM Folder's API relative path.
  *   `tagManagerUrl` (*type:* `String.t`, *default:* `nil`) - Auto generated link to the tag manager UI
  *   `workspaceId` (*type:* `String.t`, *default:* `nil`) - GTM Workspace ID.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t(),
          :containerId => String.t(),
          :fingerprint => String.t(),
          :folderId => String.t(),
          :name => String.t(),
          :notes => String.t(),
          :path => String.t(),
          :tagManagerUrl => String.t(),
          :workspaceId => String.t()
        }

  field(:accountId)
  field(:containerId)
  field(:fingerprint)
  field(:folderId)
  field(:name)
  field(:notes)
  field(:path)
  field(:tagManagerUrl)
  field(:workspaceId)
end

defimpl Poison.Decoder, for: GoogleApi.TagManager.V2.Model.Folder do
  def decode(value, options) do
    GoogleApi.TagManager.V2.Model.Folder.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TagManager.V2.Model.Folder do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
