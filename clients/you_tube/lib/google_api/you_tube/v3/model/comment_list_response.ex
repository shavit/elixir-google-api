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

defmodule GoogleApi.YouTube.V3.Model.CommentListResponse do
  @moduledoc """


  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - Etag of this resource.
  *   `eventId` (*type:* `String.t`, *default:* `nil`) - Serialized EventId of the request which produced this response.
  *   `items` (*type:* `list(GoogleApi.YouTube.V3.Model.Comment.t)`, *default:* `nil`) - A list of comments that match the request criteria.
  *   `kind` (*type:* `String.t`, *default:* `youtube#commentListResponse`) - Identifies what kind of resource this is. Value: the fixed string "youtube#commentListResponse".
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.
  *   `pageInfo` (*type:* `GoogleApi.YouTube.V3.Model.PageInfo.t`, *default:* `nil`) - 
  *   `tokenPagination` (*type:* `GoogleApi.YouTube.V3.Model.TokenPagination.t`, *default:* `nil`) - 
  *   `visitorId` (*type:* `String.t`, *default:* `nil`) - The visitorId identifies the visitor.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t(),
          :eventId => String.t(),
          :items => list(GoogleApi.YouTube.V3.Model.Comment.t()),
          :kind => String.t(),
          :nextPageToken => String.t(),
          :pageInfo => GoogleApi.YouTube.V3.Model.PageInfo.t(),
          :tokenPagination => GoogleApi.YouTube.V3.Model.TokenPagination.t(),
          :visitorId => String.t()
        }

  field(:etag)
  field(:eventId)
  field(:items, as: GoogleApi.YouTube.V3.Model.Comment, type: :list)
  field(:kind)
  field(:nextPageToken)
  field(:pageInfo, as: GoogleApi.YouTube.V3.Model.PageInfo)
  field(:tokenPagination, as: GoogleApi.YouTube.V3.Model.TokenPagination)
  field(:visitorId)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.CommentListResponse do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.CommentListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.CommentListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
