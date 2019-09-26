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

defmodule GoogleApi.PageSpeedOnline.V2.Model.ResultPageStats do
  @moduledoc """
  Summary statistics for the page, such as number of JavaScript bytes, number of HTML bytes, etc.

  ## Attributes

  *   `cssResponseBytes` (*type:* `String.t`, *default:* `nil`) - Number of uncompressed response bytes for CSS resources on the page.
  *   `flashResponseBytes` (*type:* `String.t`, *default:* `nil`) - Number of response bytes for flash resources on the page.
  *   `htmlResponseBytes` (*type:* `String.t`, *default:* `nil`) - Number of uncompressed response bytes for the main HTML document and all iframes on the page.
  *   `imageResponseBytes` (*type:* `String.t`, *default:* `nil`) - Number of response bytes for image resources on the page.
  *   `javascriptResponseBytes` (*type:* `String.t`, *default:* `nil`) - Number of uncompressed response bytes for JS resources on the page.
  *   `numberCssResources` (*type:* `integer()`, *default:* `nil`) - Number of CSS resources referenced by the page.
  *   `numberHosts` (*type:* `integer()`, *default:* `nil`) - Number of unique hosts referenced by the page.
  *   `numberJsResources` (*type:* `integer()`, *default:* `nil`) - Number of JavaScript resources referenced by the page.
  *   `numberResources` (*type:* `integer()`, *default:* `nil`) - Number of HTTP resources loaded by the page.
  *   `numberStaticResources` (*type:* `integer()`, *default:* `nil`) - Number of static (i.e. cacheable) resources on the page.
  *   `otherResponseBytes` (*type:* `String.t`, *default:* `nil`) - Number of response bytes for other resources on the page.
  *   `textResponseBytes` (*type:* `String.t`, *default:* `nil`) - Number of uncompressed response bytes for text resources not covered by other statistics (i.e non-HTML, non-script, non-CSS resources) on the page.
  *   `totalRequestBytes` (*type:* `String.t`, *default:* `nil`) - Total size of all request bytes sent by the page.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cssResponseBytes => String.t(),
          :flashResponseBytes => String.t(),
          :htmlResponseBytes => String.t(),
          :imageResponseBytes => String.t(),
          :javascriptResponseBytes => String.t(),
          :numberCssResources => integer(),
          :numberHosts => integer(),
          :numberJsResources => integer(),
          :numberResources => integer(),
          :numberStaticResources => integer(),
          :otherResponseBytes => String.t(),
          :textResponseBytes => String.t(),
          :totalRequestBytes => String.t()
        }

  field(:cssResponseBytes)
  field(:flashResponseBytes)
  field(:htmlResponseBytes)
  field(:imageResponseBytes)
  field(:javascriptResponseBytes)
  field(:numberCssResources)
  field(:numberHosts)
  field(:numberJsResources)
  field(:numberResources)
  field(:numberStaticResources)
  field(:otherResponseBytes)
  field(:textResponseBytes)
  field(:totalRequestBytes)
end

defimpl Poison.Decoder, for: GoogleApi.PageSpeedOnline.V2.Model.ResultPageStats do
  def decode(value, options) do
    GoogleApi.PageSpeedOnline.V2.Model.ResultPageStats.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PageSpeedOnline.V2.Model.ResultPageStats do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
