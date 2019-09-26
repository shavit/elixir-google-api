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

defmodule GoogleApi.YouTube.V3.Model.ChannelStatistics do
  @moduledoc """
  Statistics about a channel: number of subscribers, number of videos in the channel, etc.

  ## Attributes

  *   `commentCount` (*type:* `String.t`, *default:* `nil`) - The number of comments for the channel.
  *   `hiddenSubscriberCount` (*type:* `boolean()`, *default:* `nil`) - Whether or not the number of subscribers is shown for this user.
  *   `subscriberCount` (*type:* `String.t`, *default:* `nil`) - The number of subscribers that the channel has.
  *   `videoCount` (*type:* `String.t`, *default:* `nil`) - The number of videos uploaded to the channel.
  *   `viewCount` (*type:* `String.t`, *default:* `nil`) - The number of times the channel has been viewed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commentCount => String.t(),
          :hiddenSubscriberCount => boolean(),
          :subscriberCount => String.t(),
          :videoCount => String.t(),
          :viewCount => String.t()
        }

  field(:commentCount)
  field(:hiddenSubscriberCount)
  field(:subscriberCount)
  field(:videoCount)
  field(:viewCount)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.ChannelStatistics do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.ChannelStatistics.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.ChannelStatistics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
