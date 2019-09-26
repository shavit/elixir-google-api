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

defmodule GoogleApi.YouTubeAnalytics.V2.Api.Groups do
  @moduledoc """
  API calls for all endpoints tagged `Groups`.
  """

  alias GoogleApi.YouTubeAnalytics.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Deletes a group.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.YouTubeAnalytics.V2.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:id` (*type:* `String.t`) - The `id` parameter specifies the YouTube group ID of the group that is
          being deleted.
      *   `:onBehalfOfContentOwner` (*type:* `String.t`) - This parameter can only be used in a properly authorized request. **Note:**
          This parameter is intended exclusively for YouTube content partners that
          own and manage many different YouTube channels.

          The `onBehalfOfContentOwner` parameter indicates that the request's
          authorization credentials identify a YouTube user who is acting on behalf
          of the content owner specified in the parameter value. It allows content
          owners to authenticate once and get access to all their video and channel
          data, without having to provide authentication credentials for each
          individual channel. The account that the user authenticates with must be
          linked to the specified YouTube content owner.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.YouTubeAnalytics.V2.Model.EmptyResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec youtube_analytics_groups_delete(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.YouTubeAnalytics.V2.Model.EmptyResponse.t()} | {:error, Tesla.Env.t()}
  def youtube_analytics_groups_delete(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :id => :query,
      :onBehalfOfContentOwner => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v2/groups", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTubeAnalytics.V2.Model.EmptyResponse{}])
  end

  @doc """
  Creates a group.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.YouTubeAnalytics.V2.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:onBehalfOfContentOwner` (*type:* `String.t`) - This parameter can only be used in a properly authorized request. **Note:**
          This parameter is intended exclusively for YouTube content partners that
          own and manage many different YouTube channels.

          The `onBehalfOfContentOwner` parameter indicates that the request's
          authorization credentials identify a YouTube user who is acting on behalf
          of the content owner specified in the parameter value. It allows content
          owners to authenticate once and get access to all their video and channel
          data, without having to provide authentication credentials for each
          individual channel. The account that the user authenticates with must be
          linked to the specified YouTube content owner.
      *   `:body` (*type:* `GoogleApi.YouTubeAnalytics.V2.Model.Group.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.YouTubeAnalytics.V2.Model.Group{}}` on success
  *   `{:error, info}` on failure
  """
  @spec youtube_analytics_groups_insert(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.YouTubeAnalytics.V2.Model.Group.t()} | {:error, Tesla.Env.t()}
  def youtube_analytics_groups_insert(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :onBehalfOfContentOwner => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v2/groups", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTubeAnalytics.V2.Model.Group{}])
  end

  @doc """
  Returns a collection of groups that match the API request parameters. For
  example, you can retrieve all groups that the authenticated user owns,
  or you can retrieve one or more groups by their unique IDs.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.YouTubeAnalytics.V2.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:id` (*type:* `String.t`) - The `id` parameter specifies a comma-separated list of the YouTube group
          ID(s) for the resource(s) that are being retrieved. Each group must be
          owned by the authenticated user. In a `group` resource, the `id` property
          specifies the group's YouTube group ID.

          Note that if you do not specify a value for the `id` parameter, then you
          must set the `mine` parameter to `true`.
      *   `:mine` (*type:* `boolean()`) - This parameter can only be used in a properly authorized request. Set this
          parameter's value to true to retrieve all groups owned by the authenticated
          user.
      *   `:onBehalfOfContentOwner` (*type:* `String.t`) - This parameter can only be used in a properly authorized request. **Note:**
          This parameter is intended exclusively for YouTube content partners that
          own and manage many different YouTube channels.

          The `onBehalfOfContentOwner` parameter indicates that the request's
          authorization credentials identify a YouTube user who is acting on behalf
          of the content owner specified in the parameter value. It allows content
          owners to authenticate once and get access to all their video and channel
          data, without having to provide authentication credentials for each
          individual channel. The account that the user authenticates with must be
          linked to the specified YouTube content owner.
      *   `:pageToken` (*type:* `String.t`) - The `pageToken` parameter identifies a specific page in the result set that
          should be returned. In an API response, the `nextPageToken` property
          identifies the next page that can be retrieved.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.YouTubeAnalytics.V2.Model.ListGroupsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec youtube_analytics_groups_list(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.YouTubeAnalytics.V2.Model.ListGroupsResponse.t()}
          | {:error, Tesla.Env.t()}
  def youtube_analytics_groups_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :id => :query,
      :mine => :query,
      :onBehalfOfContentOwner => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v2/groups", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.YouTubeAnalytics.V2.Model.ListGroupsResponse{}]
    )
  end

  @doc """
  Modifies a group. For example, you could change a group's title.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.YouTubeAnalytics.V2.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:onBehalfOfContentOwner` (*type:* `String.t`) - This parameter can only be used in a properly authorized request. **Note:**
          This parameter is intended exclusively for YouTube content partners that
          own and manage many different YouTube channels.

          The `onBehalfOfContentOwner` parameter indicates that the request's
          authorization credentials identify a YouTube user who is acting on behalf
          of the content owner specified in the parameter value. It allows content
          owners to authenticate once and get access to all their video and channel
          data, without having to provide authentication credentials for each
          individual channel. The account that the user authenticates with must be
          linked to the specified YouTube content owner.
      *   `:body` (*type:* `GoogleApi.YouTubeAnalytics.V2.Model.Group.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.YouTubeAnalytics.V2.Model.Group{}}` on success
  *   `{:error, info}` on failure
  """
  @spec youtube_analytics_groups_update(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.YouTubeAnalytics.V2.Model.Group.t()} | {:error, Tesla.Env.t()}
  def youtube_analytics_groups_update(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :onBehalfOfContentOwner => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/v2/groups", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTubeAnalytics.V2.Model.Group{}])
  end
end
