# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.DeploymentManager.V2.Model.LogConfigCounterOptions do
  @moduledoc """
  Increment a streamz counter with the specified metric and field names.  Metric names should start with a &#39;/&#39;, generally be lowercase-only, and end in \&quot;_count\&quot;. Field names should not contain an initial slash. The actual exported metric names will have \&quot;/iam/policy\&quot; prepended.  Field names correspond to IAM request parameters and field values are their respective values.  Supported field names: - \&quot;authority\&quot;, which is \&quot;[token]\&quot; if IAMContext.token is present, otherwise the value of IAMContext.authority_selector if present, and otherwise a representation of IAMContext.principal; or - \&quot;iam_principal\&quot;, a representation of IAMContext.principal even if a token or authority selector is present; or - \&quot;\&quot; (empty string), resulting in a counter with no fields.  Examples: counter { metric: \&quot;/debug_access_count\&quot; field: \&quot;iam_principal\&quot; } &#x3D;&#x3D;&gt; increment counter /iam/policy/backend_debug_access_count {iam_principal&#x3D;[value of IAMContext.principal]}  At this time we do not support multiple field names (though this may be supported in the future).

  ## Attributes

  - field (String.t): The field value to attribute. Defaults to: `null`.
  - metric (String.t): The metric to update. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :field => any(),
          :metric => any()
        }

  field(:field)
  field(:metric)
end

defimpl Poison.Decoder, for: GoogleApi.DeploymentManager.V2.Model.LogConfigCounterOptions do
  def decode(value, options) do
    GoogleApi.DeploymentManager.V2.Model.LogConfigCounterOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DeploymentManager.V2.Model.LogConfigCounterOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
