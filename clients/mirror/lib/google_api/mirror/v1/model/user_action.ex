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

defmodule GoogleApi.Mirror.V1.Model.UserAction do
  @moduledoc """
  Represents an action taken by the user that triggered a notification.

  ## Attributes

  *   `payload` (*type:* `String.t`, *default:* `nil`) - An optional payload for the action.

      For actions of type CUSTOM, this is the ID of the custom menu item that was selected.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of action. The value of this can be:  
      - SHARE - the user shared an item. 
      - REPLY - the user replied to an item. 
      - REPLY_ALL - the user replied to all recipients of an item. 
      - CUSTOM - the user selected a custom menu item on the timeline item. 
      - DELETE - the user deleted the item. 
      - PIN - the user pinned the item. 
      - UNPIN - the user unpinned the item. 
      - LAUNCH - the user initiated a voice command.  In the future, additional types may be added. UserActions with unrecognized types should be ignored.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :payload => String.t(),
          :type => String.t()
        }

  field(:payload)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Mirror.V1.Model.UserAction do
  def decode(value, options) do
    GoogleApi.Mirror.V1.Model.UserAction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Mirror.V1.Model.UserAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
