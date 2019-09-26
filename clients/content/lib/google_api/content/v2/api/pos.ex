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

defmodule GoogleApi.Content.V2.Api.Pos do
  @moduledoc """
  API calls for all endpoints tagged `Pos`.
  """

  alias GoogleApi.Content.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Batches multiple POS-related calls in a single request.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Content.V2.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:dryRun` (*type:* `boolean()`) - Flag to simulate a request like in a live environment. If set to true, dry-run mode checks the validity of the request and returns errors (if any).
      *   `:body` (*type:* `GoogleApi.Content.V2.Model.PosCustomBatchRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Content.V2.Model.PosCustomBatchResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec content_pos_custombatch(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.PosCustomBatchResponse.t()} | {:error, Tesla.Env.t()}
  def content_pos_custombatch(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :dryRun => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/pos/batch", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Content.V2.Model.PosCustomBatchResponse{}])
  end

  @doc """
  Deletes a store for the given merchant.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Content.V2.Connection.t`) - Connection to server
  *   `merchant_id` (*type:* `String.t`) - The ID of the POS or inventory data provider.
  *   `target_merchant_id` (*type:* `String.t`) - The ID of the target merchant.
  *   `store_code` (*type:* `String.t`) - A store code that is unique per merchant.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:dryRun` (*type:* `boolean()`) - Flag to simulate a request like in a live environment. If set to true, dry-run mode checks the validity of the request and returns errors (if any).
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec content_pos_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def content_pos_delete(
        connection,
        merchant_id,
        target_merchant_id,
        store_code,
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
      :dryRun => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/{merchantId}/pos/{targetMerchantId}/store/{storeCode}", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1),
        "targetMerchantId" => URI.encode(target_merchant_id, &URI.char_unreserved?/1),
        "storeCode" => URI.encode(store_code, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Retrieves information about the given store.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Content.V2.Connection.t`) - Connection to server
  *   `merchant_id` (*type:* `String.t`) - The ID of the POS or inventory data provider.
  *   `target_merchant_id` (*type:* `String.t`) - The ID of the target merchant.
  *   `store_code` (*type:* `String.t`) - A store code that is unique per merchant.
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

  *   `{:ok, %GoogleApi.Content.V2.Model.PosStore{}}` on success
  *   `{:error, info}` on failure
  """
  @spec content_pos_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.Content.V2.Model.PosStore.t()} | {:error, Tesla.Env.t()}
  def content_pos_get(
        connection,
        merchant_id,
        target_merchant_id,
        store_code,
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
      |> Request.url("/{merchantId}/pos/{targetMerchantId}/store/{storeCode}", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1),
        "targetMerchantId" => URI.encode(target_merchant_id, &URI.char_unreserved?/1),
        "storeCode" => URI.encode(store_code, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Content.V2.Model.PosStore{}])
  end

  @doc """
  Creates a store for the given merchant.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Content.V2.Connection.t`) - Connection to server
  *   `merchant_id` (*type:* `String.t`) - The ID of the POS or inventory data provider.
  *   `target_merchant_id` (*type:* `String.t`) - The ID of the target merchant.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:dryRun` (*type:* `boolean()`) - Flag to simulate a request like in a live environment. If set to true, dry-run mode checks the validity of the request and returns errors (if any).
      *   `:body` (*type:* `GoogleApi.Content.V2.Model.PosStore.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Content.V2.Model.PosStore{}}` on success
  *   `{:error, info}` on failure
  """
  @spec content_pos_insert(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.PosStore.t()} | {:error, Tesla.Env.t()}
  def content_pos_insert(
        connection,
        merchant_id,
        target_merchant_id,
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
      :dryRun => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/{merchantId}/pos/{targetMerchantId}/store", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1),
        "targetMerchantId" => URI.encode(target_merchant_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Content.V2.Model.PosStore{}])
  end

  @doc """
  Submit inventory for the given merchant.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Content.V2.Connection.t`) - Connection to server
  *   `merchant_id` (*type:* `String.t`) - The ID of the POS or inventory data provider.
  *   `target_merchant_id` (*type:* `String.t`) - The ID of the target merchant.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:dryRun` (*type:* `boolean()`) - Flag to simulate a request like in a live environment. If set to true, dry-run mode checks the validity of the request and returns errors (if any).
      *   `:body` (*type:* `GoogleApi.Content.V2.Model.PosInventoryRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Content.V2.Model.PosInventoryResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec content_pos_inventory(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.PosInventoryResponse.t()} | {:error, Tesla.Env.t()}
  def content_pos_inventory(
        connection,
        merchant_id,
        target_merchant_id,
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
      :dryRun => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/{merchantId}/pos/{targetMerchantId}/inventory", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1),
        "targetMerchantId" => URI.encode(target_merchant_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Content.V2.Model.PosInventoryResponse{}])
  end

  @doc """
  Lists the stores of the target merchant.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Content.V2.Connection.t`) - Connection to server
  *   `merchant_id` (*type:* `String.t`) - The ID of the POS or inventory data provider.
  *   `target_merchant_id` (*type:* `String.t`) - The ID of the target merchant.
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

  *   `{:ok, %GoogleApi.Content.V2.Model.PosListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec content_pos_list(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.PosListResponse.t()} | {:error, Tesla.Env.t()}
  def content_pos_list(
        connection,
        merchant_id,
        target_merchant_id,
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
      |> Request.url("/{merchantId}/pos/{targetMerchantId}/store", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1),
        "targetMerchantId" => URI.encode(target_merchant_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Content.V2.Model.PosListResponse{}])
  end

  @doc """
  Submit a sale event for the given merchant.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Content.V2.Connection.t`) - Connection to server
  *   `merchant_id` (*type:* `String.t`) - The ID of the POS or inventory data provider.
  *   `target_merchant_id` (*type:* `String.t`) - The ID of the target merchant.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:dryRun` (*type:* `boolean()`) - Flag to simulate a request like in a live environment. If set to true, dry-run mode checks the validity of the request and returns errors (if any).
      *   `:body` (*type:* `GoogleApi.Content.V2.Model.PosSaleRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Content.V2.Model.PosSaleResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec content_pos_sale(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.PosSaleResponse.t()} | {:error, Tesla.Env.t()}
  def content_pos_sale(
        connection,
        merchant_id,
        target_merchant_id,
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
      :dryRun => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/{merchantId}/pos/{targetMerchantId}/sale", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1),
        "targetMerchantId" => URI.encode(target_merchant_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Content.V2.Model.PosSaleResponse{}])
  end
end
