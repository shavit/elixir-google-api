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

defmodule GoogleApi.ServiceControl.V1.Model.QuotaOperation do
  @moduledoc """
  Represents information regarding a quota operation.

  ## Attributes

  *   `consumerId` (*type:* `String.t`, *default:* `nil`) - Identity of the consumer for whom this quota operation is being performed.

      This can be in one of the following formats:
        project:<project_id>,
        project_number:<project_number>,
        api_key:<api_key>.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels describing the operation.
  *   `methodName` (*type:* `String.t`, *default:* `nil`) - Fully qualified name of the API method for which this quota operation is
      requested. This name is used for matching quota rules or metric rules and
      billing status rules defined in service configuration.

      This field should not be set if any of the following is true:
      (1) the quota operation is performed on non-API resources.
      (2) quota_metrics is set because the caller is doing quota override.

      Example of an RPC method name:
          google.example.library.v1.LibraryService.CreateShelf
  *   `operationId` (*type:* `String.t`, *default:* `nil`) - Identity of the operation. This is expected to be unique within the scope
      of the service that generated the operation, and guarantees idempotency in
      case of retries.

      UUID version 4 is recommended, though not required. In scenarios where an
      operation is computed from existing information and an idempotent id is
      desirable for deduplication purpose, UUID version 5 is recommended. See
      RFC 4122 for details.
  *   `quotaMetrics` (*type:* `list(GoogleApi.ServiceControl.V1.Model.MetricValueSet.t)`, *default:* `nil`) - Represents information about this operation. Each MetricValueSet
      corresponds to a metric defined in the service configuration.
      The data type used in the MetricValueSet must agree with
      the data type specified in the metric definition.

      Within a single operation, it is not allowed to have more than one
      MetricValue instances that have the same metric names and identical
      label value combinations. If a request has such duplicated MetricValue
      instances, the entire request is rejected with
      an invalid argument error.

      This field is mutually exclusive with method_name.
  *   `quotaMode` (*type:* `String.t`, *default:* `nil`) - Quota mode for this operation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consumerId => String.t(),
          :labels => map(),
          :methodName => String.t(),
          :operationId => String.t(),
          :quotaMetrics => list(GoogleApi.ServiceControl.V1.Model.MetricValueSet.t()),
          :quotaMode => String.t()
        }

  field(:consumerId)
  field(:labels, type: :map)
  field(:methodName)
  field(:operationId)
  field(:quotaMetrics, as: GoogleApi.ServiceControl.V1.Model.MetricValueSet, type: :list)
  field(:quotaMode)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.QuotaOperation do
  def decode(value, options) do
    GoogleApi.ServiceControl.V1.Model.QuotaOperation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.QuotaOperation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
