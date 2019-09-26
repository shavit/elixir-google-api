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

defmodule GoogleApi.Compute.V1.Model.InstanceTemplate do
  @moduledoc """
  Represents an Instance Template resource.

  You can use instance templates to create VM instances and managed instance groups. For more information, read Instance Templates. (== resource_for beta.instanceTemplates ==) (== resource_for v1.instanceTemplates ==)

  ## Attributes

  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] The creation timestamp for this instance template in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] A unique identifier for this instance template. The server defines this identifier.
  *   `kind` (*type:* `String.t`, *default:* `compute#instanceTemplate`) - [Output Only] The resource type, which is always compute#instanceTemplate for instance templates.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `properties` (*type:* `GoogleApi.Compute.V1.Model.InstanceProperties.t`, *default:* `nil`) - The instance properties for this instance template.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] The URL for this instance template. The server defines this URL.
  *   `sourceInstance` (*type:* `String.t`, *default:* `nil`) - The source instance used to create the template. You can provide this as a partial or full URL to the resource. For example, the following are valid values:  
      - https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/instance 
      - projects/project/zones/zone/instances/instance
  *   `sourceInstanceParams` (*type:* `GoogleApi.Compute.V1.Model.SourceInstanceParams.t`, *default:* `nil`) - The source instance params to use to create this instance template.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => String.t(),
          :description => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :name => String.t(),
          :properties => GoogleApi.Compute.V1.Model.InstanceProperties.t(),
          :selfLink => String.t(),
          :sourceInstance => String.t(),
          :sourceInstanceParams => GoogleApi.Compute.V1.Model.SourceInstanceParams.t()
        }

  field(:creationTimestamp)
  field(:description)
  field(:id)
  field(:kind)
  field(:name)
  field(:properties, as: GoogleApi.Compute.V1.Model.InstanceProperties)
  field(:selfLink)
  field(:sourceInstance)
  field(:sourceInstanceParams, as: GoogleApi.Compute.V1.Model.SourceInstanceParams)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InstanceTemplate do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InstanceTemplate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InstanceTemplate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
