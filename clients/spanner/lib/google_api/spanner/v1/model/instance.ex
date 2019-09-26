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

defmodule GoogleApi.Spanner.V1.Model.Instance do
  @moduledoc """
  An isolated set of Cloud Spanner resources on which databases can be hosted.

  ## Attributes

  *   `config` (*type:* `String.t`, *default:* `nil`) - Required. The name of the instance's configuration. Values are of the form
      `projects/<project>/instanceConfigs/<configuration>`. See
      also InstanceConfig and
      ListInstanceConfigs.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The descriptive name for this instance as it appears in UIs.
      Must be unique per project and between 4 and 30 characters in length.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Cloud Labels are a flexible and lightweight mechanism for organizing cloud
      resources into groups that reflect a customer's organizational needs and
      deployment strategies. Cloud Labels can be used to filter collections of
      resources. They can be used to control how resource metrics are aggregated.
      And they can be used as arguments to policy management rules (e.g. route,
      firewall, load balancing, etc.).

       * Label keys must be between 1 and 63 characters long and must conform to
         the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`.
       * Label values must be between 0 and 63 characters long and must conform
         to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
       * No more than 64 labels can be associated with a given resource.

      See https://goo.gl/xmQnxf for more information on and examples of labels.

      If you plan to use labels in your own code, please note that additional
      characters may be allowed in the future. And so you are advised to use an
      internal label representation, such as JSON, which doesn't rely upon
      specific characters being disallowed.  For example, representing labels
      as the string:  name + "_" + value  would prove problematic if we were to
      allow "_" in a future release.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. A unique identifier for the instance, which cannot be changed
      after the instance is created. Values are of the form
      `projects/<project>/instances/a-z*[a-z0-9]`. The final
      segment of the name must be between 2 and 64 characters in length.
  *   `nodeCount` (*type:* `integer()`, *default:* `nil`) - Required. The number of nodes allocated to this instance. This may be zero
      in API responses for instances that are not yet in state `READY`.

      See [the
      documentation](https://cloud.google.com/spanner/docs/instances#node_count)
      for more information about nodes.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current instance state. For
      CreateInstance, the state must be
      either omitted or set to `CREATING`. For
      UpdateInstance, the state must be
      either omitted or set to `READY`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :config => String.t(),
          :displayName => String.t(),
          :labels => map(),
          :name => String.t(),
          :nodeCount => integer(),
          :state => String.t()
        }

  field(:config)
  field(:displayName)
  field(:labels, type: :map)
  field(:name)
  field(:nodeCount)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.Instance do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.Instance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.Instance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
