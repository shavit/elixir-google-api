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

defmodule GoogleApi.DoubleClickBidManager.V1.Model.DownloadLineItemsRequest do
  @moduledoc """
  Request to fetch stored line items.

  ## Attributes

  *   `fileSpec` (*type:* `String.t`, *default:* `nil`) - File specification (column names, types, order) in which the line items will be returned. Default to EWF.
  *   `filterIds` (*type:* `list(String.t)`, *default:* `nil`) - Ids of the specified filter type used to filter line items to fetch. If omitted, all the line items will be returned.
  *   `filterType` (*type:* `String.t`, *default:* `nil`) - Filter type used to filter line items to fetch.
  *   `format` (*type:* `String.t`, *default:* `nil`) - Format in which the line items will be returned. Default to CSV.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fileSpec => String.t(),
          :filterIds => list(String.t()),
          :filterType => String.t(),
          :format => String.t()
        }

  field(:fileSpec)
  field(:filterIds, type: :list)
  field(:filterType)
  field(:format)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickBidManager.V1.Model.DownloadLineItemsRequest do
  def decode(value, options) do
    GoogleApi.DoubleClickBidManager.V1.Model.DownloadLineItemsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickBidManager.V1.Model.DownloadLineItemsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
