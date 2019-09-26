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

defmodule GoogleApi.Compute.V1.Model.SslCertificate do
  @moduledoc """
  Represents an SSL Certificate resource.

  This SSL certificate resource also contains a private key. You can use SSL keys and certificates to secure connections to a load balancer. For more information, read  Creating and Using SSL Certificates. (== resource_for beta.sslCertificates ==) (== resource_for v1.sslCertificates ==)

  ## Attributes

  *   `certificate` (*type:* `String.t`, *default:* `nil`) - A local certificate file. The certificate must be in PEM format. The certificate chain must be no greater than 5 certs long. The chain must include at least one intermediate cert.
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#sslCertificate`) - [Output Only] Type of the resource. Always compute#sslCertificate for SSL certificates.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `privateKey` (*type:* `String.t`, *default:* `nil`) - A write-only private key in PEM format. Only insert requests will include this field.
  *   `region` (*type:* `String.t`, *default:* `nil`) - [Output Only] URL of the region where the regional SSL Certificate resides. This field is not applicable to global SSL Certificate.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output only] Server-defined URL for the resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :certificate => String.t(),
          :creationTimestamp => String.t(),
          :description => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :name => String.t(),
          :privateKey => String.t(),
          :region => String.t(),
          :selfLink => String.t()
        }

  field(:certificate)
  field(:creationTimestamp)
  field(:description)
  field(:id)
  field(:kind)
  field(:name)
  field(:privateKey)
  field(:region)
  field(:selfLink)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.SslCertificate do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.SslCertificate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.SslCertificate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
