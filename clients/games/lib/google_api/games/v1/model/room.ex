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

defmodule GoogleApi.Games.V1.Model.Room do
  @moduledoc """
  This is a JSON template for a room resource object.

  ## Attributes

  *   `applicationId` (*type:* `String.t`, *default:* `nil`) - The ID of the application being played.
  *   `autoMatchingCriteria` (*type:* `GoogleApi.Games.V1.Model.RoomAutoMatchingCriteria.t`, *default:* `nil`) - Criteria for auto-matching players into this room.
  *   `autoMatchingStatus` (*type:* `GoogleApi.Games.V1.Model.RoomAutoMatchStatus.t`, *default:* `nil`) - Auto-matching status for this room. Not set if the room is not currently in the auto-matching queue.
  *   `creationDetails` (*type:* `GoogleApi.Games.V1.Model.RoomModification.t`, *default:* `nil`) - Details about the room creation.
  *   `description` (*type:* `String.t`, *default:* `nil`) - This short description is generated by our servers and worded relative to the player requesting the room. It is intended to be displayed when the room is shown in a list (that is, an invitation to a room.)
  *   `inviterId` (*type:* `String.t`, *default:* `nil`) - The ID of the participant that invited the user to the room. Not set if the user was not invited to the room.
  *   `kind` (*type:* `String.t`, *default:* `games#room`) - Uniquely identifies the type of this resource. Value is always the fixed string games#room.
  *   `lastUpdateDetails` (*type:* `GoogleApi.Games.V1.Model.RoomModification.t`, *default:* `nil`) - Details about the last update to the room.
  *   `participants` (*type:* `list(GoogleApi.Games.V1.Model.RoomParticipant.t)`, *default:* `nil`) - The participants involved in the room, along with their statuses. Includes participants who have left or declined invitations.
  *   `roomId` (*type:* `String.t`, *default:* `nil`) - Globally unique ID for a room.
  *   `roomStatusVersion` (*type:* `integer()`, *default:* `nil`) - The version of the room status: an increasing counter, used by the client to ignore out-of-order updates to room status.
  *   `status` (*type:* `String.t`, *default:* `nil`) - The status of the room.
      Possible values are:  
      - "ROOM_INVITING" - One or more players have been invited and not responded. 
      - "ROOM_AUTO_MATCHING" - One or more slots need to be filled by auto-matching. 
      - "ROOM_CONNECTING" - Players have joined and are connecting to each other (either before or after auto-matching). 
      - "ROOM_ACTIVE" - All players have joined and connected to each other. 
      - "ROOM_DELETED" - The room should no longer be shown on the client. Returned in sync calls when a player joins a room (as a tombstone), or for rooms where all joined participants have left.
  *   `variant` (*type:* `integer()`, *default:* `nil`) - The variant / mode of the application being played; can be any integer value, or left blank.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :applicationId => String.t(),
          :autoMatchingCriteria => GoogleApi.Games.V1.Model.RoomAutoMatchingCriteria.t(),
          :autoMatchingStatus => GoogleApi.Games.V1.Model.RoomAutoMatchStatus.t(),
          :creationDetails => GoogleApi.Games.V1.Model.RoomModification.t(),
          :description => String.t(),
          :inviterId => String.t(),
          :kind => String.t(),
          :lastUpdateDetails => GoogleApi.Games.V1.Model.RoomModification.t(),
          :participants => list(GoogleApi.Games.V1.Model.RoomParticipant.t()),
          :roomId => String.t(),
          :roomStatusVersion => integer(),
          :status => String.t(),
          :variant => integer()
        }

  field(:applicationId)
  field(:autoMatchingCriteria, as: GoogleApi.Games.V1.Model.RoomAutoMatchingCriteria)
  field(:autoMatchingStatus, as: GoogleApi.Games.V1.Model.RoomAutoMatchStatus)
  field(:creationDetails, as: GoogleApi.Games.V1.Model.RoomModification)
  field(:description)
  field(:inviterId)
  field(:kind)
  field(:lastUpdateDetails, as: GoogleApi.Games.V1.Model.RoomModification)
  field(:participants, as: GoogleApi.Games.V1.Model.RoomParticipant, type: :list)
  field(:roomId)
  field(:roomStatusVersion)
  field(:status)
  field(:variant)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.Room do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.Room.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.Room do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
