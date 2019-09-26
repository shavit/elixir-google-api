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

defmodule GoogleApi.AndroidDeviceProvisioning.V1.Model.Operation do
  @moduledoc """
  This resource represents a long-running operation that is the result of a
  network API call.

  ## Attributes

  *   `done` (*type:* `boolean()`, *default:* `nil`) - If the value is `false`, it means the operation is still in progress.
      If `true`, the operation is completed, and either `error` or `response` is
      available.
  *   `error` (*type:* `GoogleApi.AndroidDeviceProvisioning.V1.Model.Status.t`, *default:* `nil`) - This field will always be not set if the operation is created by `claimAsync`, `unclaimAsync`, or `updateMetadataAsync`. In this case, error information for each device is set in `response.perDeviceStatus.result.status`.
  *   `metadata` (*type:* `map()`, *default:* `nil`) - This field will contain a `DevicesLongRunningOperationMetadata` object if the operation is created by `claimAsync`, `unclaimAsync`, or `updateMetadataAsync`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The server-assigned name, which is only unique within the same service that
      originally returns it. If you use the default HTTP mapping, the
      `name` should be a resource name ending with `operations/{unique_id}`.
  *   `response` (*type:* `map()`, *default:* `nil`) - This field will contain a `DevicesLongRunningOperationResponse` object if the operation is created by `claimAsync`, `unclaimAsync`, or `updateMetadataAsync`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :done => boolean(),
          :error => GoogleApi.AndroidDeviceProvisioning.V1.Model.Status.t(),
          :metadata => map(),
          :name => String.t(),
          :response => map()
        }

  field(:done)
  field(:error, as: GoogleApi.AndroidDeviceProvisioning.V1.Model.Status)
  field(:metadata, type: :map)
  field(:name)
  field(:response, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.Operation do
  def decode(value, options) do
    GoogleApi.AndroidDeviceProvisioning.V1.Model.Operation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.Operation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
