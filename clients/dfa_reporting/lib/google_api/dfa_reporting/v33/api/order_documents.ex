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

defmodule GoogleApi.DFAReporting.V33.Api.OrderDocuments do
  @moduledoc """
  API calls for all endpoints tagged `OrderDocuments`.
  """

  alias GoogleApi.DFAReporting.V33.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Gets one order document by ID.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DFAReporting.V33.Connection.t`) - Connection to server
  *   `profile_id` (*type:* `String.t`) - User profile ID associated with this request.
  *   `project_id` (*type:* `String.t`) - Project ID for order documents.
  *   `id` (*type:* `String.t`) - Order document ID.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DFAReporting.V33.Model.OrderDocument{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_order_documents_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.DFAReporting.V33.Model.OrderDocument.t()} | {:error, Tesla.Env.t()}
  def dfareporting_order_documents_get(
        connection,
        profile_id,
        project_id,
        id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url(
        "/dfareporting/v3.3/userprofiles/{profileId}/projects/{projectId}/orderDocuments/{id}",
        %{
          "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1),
          "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
          "id" => URI.encode(id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V33.Model.OrderDocument{}])
  end

  @doc """
  Retrieves a list of order documents, possibly filtered. This method supports paging.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DFAReporting.V33.Connection.t`) - Connection to server
  *   `profile_id` (*type:* `String.t`) - User profile ID associated with this request.
  *   `project_id` (*type:* `String.t`) - Project ID for order documents.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:approved` (*type:* `boolean()`) - Select only order documents that have been approved by at least one user.
      *   `:ids` (*type:* `list(String.t)`) - Select only order documents with these IDs.
      *   `:maxResults` (*type:* `integer()`) - Maximum number of results to return.
      *   `:orderId` (*type:* `list(String.t)`) - Select only order documents for specified orders.
      *   `:pageToken` (*type:* `String.t`) - Value of the nextPageToken from the previous result page.
      *   `:searchString` (*type:* `String.t`) - Allows searching for order documents by name or ID. Wildcards (*) are allowed. For example, "orderdocument*2015" will return order documents with names like "orderdocument June 2015", "orderdocument April 2015", or simply "orderdocument 2015". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of "orderdocument" will match order documents with name "my orderdocument", "orderdocument 2015", or simply "orderdocument".
      *   `:siteId` (*type:* `list(String.t)`) - Select only order documents that are associated with these sites.
      *   `:sortField` (*type:* `String.t`) - Field by which to sort the list.
      *   `:sortOrder` (*type:* `String.t`) - Order of sorted results.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DFAReporting.V33.Model.OrderDocumentsListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_order_documents_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.DFAReporting.V33.Model.OrderDocumentsListResponse.t()}
          | {:error, Tesla.Env.t()}
  def dfareporting_order_documents_list(
        connection,
        profile_id,
        project_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :approved => :query,
      :ids => :query,
      :maxResults => :query,
      :orderId => :query,
      :pageToken => :query,
      :searchString => :query,
      :siteId => :query,
      :sortField => :query,
      :sortOrder => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url(
        "/dfareporting/v3.3/userprofiles/{profileId}/projects/{projectId}/orderDocuments",
        %{
          "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1),
          "projectId" => URI.encode(project_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.DFAReporting.V33.Model.OrderDocumentsListResponse{}]
    )
  end
end
