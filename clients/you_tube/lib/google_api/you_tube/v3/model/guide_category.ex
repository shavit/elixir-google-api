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

defmodule GoogleApi.YouTube.V3.Model.GuideCategory do
  @moduledoc """
  A guideCategory resource identifies a category that YouTube algorithmically assigns based on a channel's content or other indicators, such as the channel's popularity. The list is similar to video categories, with the difference being that a video's uploader can assign a video category but only YouTube can assign a channel category.

  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - Etag of this resource.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID that YouTube uses to uniquely identify the guide category.
  *   `kind` (*type:* `String.t`, *default:* `youtube#guideCategory`) - Identifies what kind of resource this is. Value: the fixed string "youtube#guideCategory".
  *   `snippet` (*type:* `GoogleApi.YouTube.V3.Model.GuideCategorySnippet.t`, *default:* `nil`) - The snippet object contains basic details about the category, such as its title.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :snippet => GoogleApi.YouTube.V3.Model.GuideCategorySnippet.t()
        }

  field(:etag)
  field(:id)
  field(:kind)
  field(:snippet, as: GoogleApi.YouTube.V3.Model.GuideCategorySnippet)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.GuideCategory do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.GuideCategory.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.GuideCategory do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
