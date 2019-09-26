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

defmodule GoogleApi.AppEngine.V1.Model.DomainMapping do
  @moduledoc """
  A domain serving an App Engine application.

  ## Attributes

  *   `id` (*type:* `String.t`, *default:* `nil`) - Relative name of the domain serving the application. Example: example.com.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Full path to the DomainMapping resource in the API. Example: apps/myapp/domainMapping/example.com.@OutputOnly
  *   `resourceRecords` (*type:* `list(GoogleApi.AppEngine.V1.Model.ResourceRecord.t)`, *default:* `nil`) - The resource records required to configure this domain mapping. These records must be added to the domain's DNS configuration in order to serve the application via this domain mapping.@OutputOnly
  *   `sslSettings` (*type:* `GoogleApi.AppEngine.V1.Model.SslSettings.t`, *default:* `nil`) - SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t(),
          :name => String.t(),
          :resourceRecords => list(GoogleApi.AppEngine.V1.Model.ResourceRecord.t()),
          :sslSettings => GoogleApi.AppEngine.V1.Model.SslSettings.t()
        }

  field(:id)
  field(:name)
  field(:resourceRecords, as: GoogleApi.AppEngine.V1.Model.ResourceRecord, type: :list)
  field(:sslSettings, as: GoogleApi.AppEngine.V1.Model.SslSettings)
end

defimpl Poison.Decoder, for: GoogleApi.AppEngine.V1.Model.DomainMapping do
  def decode(value, options) do
    GoogleApi.AppEngine.V1.Model.DomainMapping.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppEngine.V1.Model.DomainMapping do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
