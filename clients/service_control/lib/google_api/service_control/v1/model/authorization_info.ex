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

defmodule GoogleApi.ServiceControl.V1.Model.AuthorizationInfo do
  @moduledoc """
  Authorization information for the operation.

  ## Attributes

  *   `granted` (*type:* `boolean()`, *default:* `nil`) - Whether or not authorization for `resource` and `permission`
      was granted.
  *   `permission` (*type:* `String.t`, *default:* `nil`) - The required IAM permission.
  *   `resource` (*type:* `String.t`, *default:* `nil`) - The resource being accessed, as a REST-style string. For example:

          bigquery.googleapis.com/projects/PROJECTID/datasets/DATASETID
  *   `resourceAttributes` (*type:* `GoogleApi.ServiceControl.V1.Model.Resource.t`, *default:* `nil`) - Resource attributes used in IAM condition evaluation. This field contains
      resource attributes like resource type and resource name.

      To get the whole view of the attributes used in IAM
      condition evaluation, the user must also look into
      `AuditLog.request_metadata.request_attributes`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :granted => boolean(),
          :permission => String.t(),
          :resource => String.t(),
          :resourceAttributes => GoogleApi.ServiceControl.V1.Model.Resource.t()
        }

  field(:granted)
  field(:permission)
  field(:resource)
  field(:resourceAttributes, as: GoogleApi.ServiceControl.V1.Model.Resource)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.AuthorizationInfo do
  def decode(value, options) do
    GoogleApi.ServiceControl.V1.Model.AuthorizationInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.AuthorizationInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
