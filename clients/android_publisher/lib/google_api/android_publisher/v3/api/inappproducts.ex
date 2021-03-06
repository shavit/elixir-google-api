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

defmodule GoogleApi.AndroidPublisher.V3.Api.Inappproducts do
  @moduledoc """
  API calls for all endpoints tagged `Inappproducts`.
  """

  alias GoogleApi.AndroidPublisher.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Delete an in-app product for an app.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidPublisher.V3.Connection.t`) - Connection to server
  *   `package_name` (*type:* `String.t`) - Unique identifier for the Android app with the in-app product; for example, "com.spiffygame".
  *   `sku` (*type:* `String.t`) - Unique identifier for the in-app product.
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

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidpublisher_inappproducts_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def androidpublisher_inappproducts_delete(
        connection,
        package_name,
        sku,
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
      |> Request.method(:delete)
      |> Request.url("/androidpublisher/v3/applications/{packageName}/inappproducts/{sku}", %{
        "packageName" => URI.encode(package_name, &URI.char_unreserved?/1),
        "sku" => URI.encode(sku, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Returns information about the in-app product specified.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidPublisher.V3.Connection.t`) - Connection to server
  *   `package_name` (*type:* `String.t`) - 
  *   `sku` (*type:* `String.t`) - Unique identifier for the in-app product.
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

  *   `{:ok, %GoogleApi.AndroidPublisher.V3.Model.InAppProduct{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidpublisher_inappproducts_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.AndroidPublisher.V3.Model.InAppProduct.t()} | {:error, Tesla.Env.t()}
  def androidpublisher_inappproducts_get(
        connection,
        package_name,
        sku,
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
      |> Request.url("/androidpublisher/v3/applications/{packageName}/inappproducts/{sku}", %{
        "packageName" => URI.encode(package_name, &URI.char_unreserved?/1),
        "sku" => URI.encode(sku, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidPublisher.V3.Model.InAppProduct{}])
  end

  @doc """
  Creates a new in-app product for an app.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidPublisher.V3.Connection.t`) - Connection to server
  *   `package_name` (*type:* `String.t`) - Unique identifier for the Android app; for example, "com.spiffygame".
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:autoConvertMissingPrices` (*type:* `boolean()`) - If true the prices for all regions targeted by the parent app that don't have a price specified for this in-app product will be auto converted to the target currency based on the default price. Defaults to false.
      *   `:body` (*type:* `GoogleApi.AndroidPublisher.V3.Model.InAppProduct.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AndroidPublisher.V3.Model.InAppProduct{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidpublisher_inappproducts_insert(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.AndroidPublisher.V3.Model.InAppProduct.t()} | {:error, Tesla.Env.t()}
  def androidpublisher_inappproducts_insert(
        connection,
        package_name,
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
      :autoConvertMissingPrices => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/androidpublisher/v3/applications/{packageName}/inappproducts", %{
        "packageName" => URI.encode(package_name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidPublisher.V3.Model.InAppProduct{}])
  end

  @doc """
  List all the in-app products for an Android app, both subscriptions and managed in-app products..

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidPublisher.V3.Connection.t`) - Connection to server
  *   `package_name` (*type:* `String.t`) - Unique identifier for the Android app with in-app products; for example, "com.spiffygame".
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:maxResults` (*type:* `integer()`) - 
      *   `:startIndex` (*type:* `integer()`) - 
      *   `:token` (*type:* `String.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AndroidPublisher.V3.Model.InappproductsListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidpublisher_inappproducts_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.AndroidPublisher.V3.Model.InappproductsListResponse.t()}
          | {:error, Tesla.Env.t()}
  def androidpublisher_inappproducts_list(
        connection,
        package_name,
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
      :maxResults => :query,
      :startIndex => :query,
      :token => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/androidpublisher/v3/applications/{packageName}/inappproducts", %{
        "packageName" => URI.encode(package_name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidPublisher.V3.Model.InappproductsListResponse{}]
    )
  end

  @doc """
  Updates the details of an in-app product. This method supports patch semantics.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidPublisher.V3.Connection.t`) - Connection to server
  *   `package_name` (*type:* `String.t`) - Unique identifier for the Android app with the in-app product; for example, "com.spiffygame".
  *   `sku` (*type:* `String.t`) - Unique identifier for the in-app product.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:autoConvertMissingPrices` (*type:* `boolean()`) - If true the prices for all regions targeted by the parent app that don't have a price specified for this in-app product will be auto converted to the target currency based on the default price. Defaults to false.
      *   `:body` (*type:* `GoogleApi.AndroidPublisher.V3.Model.InAppProduct.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AndroidPublisher.V3.Model.InAppProduct{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidpublisher_inappproducts_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.AndroidPublisher.V3.Model.InAppProduct.t()} | {:error, Tesla.Env.t()}
  def androidpublisher_inappproducts_patch(
        connection,
        package_name,
        sku,
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
      :autoConvertMissingPrices => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/androidpublisher/v3/applications/{packageName}/inappproducts/{sku}", %{
        "packageName" => URI.encode(package_name, &URI.char_unreserved?/1),
        "sku" => URI.encode(sku, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidPublisher.V3.Model.InAppProduct{}])
  end

  @doc """
  Updates the details of an in-app product.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidPublisher.V3.Connection.t`) - Connection to server
  *   `package_name` (*type:* `String.t`) - Unique identifier for the Android app with the in-app product; for example, "com.spiffygame".
  *   `sku` (*type:* `String.t`) - Unique identifier for the in-app product.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:autoConvertMissingPrices` (*type:* `boolean()`) - If true the prices for all regions targeted by the parent app that don't have a price specified for this in-app product will be auto converted to the target currency based on the default price. Defaults to false.
      *   `:body` (*type:* `GoogleApi.AndroidPublisher.V3.Model.InAppProduct.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AndroidPublisher.V3.Model.InAppProduct{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidpublisher_inappproducts_update(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.AndroidPublisher.V3.Model.InAppProduct.t()} | {:error, Tesla.Env.t()}
  def androidpublisher_inappproducts_update(
        connection,
        package_name,
        sku,
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
      :autoConvertMissingPrices => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/androidpublisher/v3/applications/{packageName}/inappproducts/{sku}", %{
        "packageName" => URI.encode(package_name, &URI.char_unreserved?/1),
        "sku" => URI.encode(sku, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidPublisher.V3.Model.InAppProduct{}])
  end
end
