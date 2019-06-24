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

defmodule GoogleApi.YouTube.V3.Api.GuideCategories do
  @moduledoc """
  API calls for all endpoints tagged `GuideCategories`.
  """

  alias GoogleApi.YouTube.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Returns a list of categories that can be associated with YouTube channels.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.YouTube.V3.Connection.t`) - Connection to server
  *   `part` (*type:* `String.t`) - The part parameter specifies the guideCategory resource properties that the API response will include. Set the parameter value to snippet.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:hl` (*type:* `String.t`) - The hl parameter specifies the language that will be used for text values in the API response.
      *   `:id` (*type:* `String.t`) - The id parameter specifies a comma-separated list of the YouTube channel category ID(s) for the resource(s) that are being retrieved. In a guideCategory resource, the id property specifies the YouTube channel category ID.
      *   `:regionCode` (*type:* `String.t`) - The regionCode parameter instructs the API to return the list of guide categories available in the specified country. The parameter value is an ISO 3166-1 alpha-2 country code.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.YouTube.V3.Model.GuideCategoryListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec youtube_guide_categories_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.YouTube.V3.Model.GuideCategoryListResponse.t()}
          | {:error, Tesla.Env.t()}
  def youtube_guide_categories_list(connection, part, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :hl => :query,
      :id => :query,
      :regionCode => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/youtube/v3/guideCategories", %{})
      |> Request.add_param(:query, :part, part)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTube.V3.Model.GuideCategoryListResponse{}])
  end
end
