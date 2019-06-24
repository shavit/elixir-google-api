# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.YouTube.V3.Model.ChannelBrandingSettings do
  @moduledoc """
  Branding properties of a YouTube channel.

  ## Attributes

  *   `channel` (*type:* `GoogleApi.YouTube.V3.Model.ChannelSettings.t`, *default:* `nil`) - Branding properties for the channel view.
  *   `hints` (*type:* `list(GoogleApi.YouTube.V3.Model.PropertyValue.t)`, *default:* `nil`) - Additional experimental branding properties.
  *   `image` (*type:* `GoogleApi.YouTube.V3.Model.ImageSettings.t`, *default:* `nil`) - Branding properties for branding images.
  *   `watch` (*type:* `GoogleApi.YouTube.V3.Model.WatchSettings.t`, *default:* `nil`) - Branding properties for the watch page.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :channel => GoogleApi.YouTube.V3.Model.ChannelSettings.t(),
          :hints => list(GoogleApi.YouTube.V3.Model.PropertyValue.t()),
          :image => GoogleApi.YouTube.V3.Model.ImageSettings.t(),
          :watch => GoogleApi.YouTube.V3.Model.WatchSettings.t()
        }

  field(:channel, as: GoogleApi.YouTube.V3.Model.ChannelSettings)
  field(:hints, as: GoogleApi.YouTube.V3.Model.PropertyValue, type: :list)
  field(:image, as: GoogleApi.YouTube.V3.Model.ImageSettings)
  field(:watch, as: GoogleApi.YouTube.V3.Model.WatchSettings)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.ChannelBrandingSettings do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.ChannelBrandingSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.ChannelBrandingSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
