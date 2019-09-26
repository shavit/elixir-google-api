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

defmodule GoogleApi.DeploymentManager.V2.Model.Rule do
  @moduledoc """
  A rule to be applied in a Policy.

  ## Attributes

  *   `action` (*type:* `String.t`, *default:* `nil`) - Required
  *   `conditions` (*type:* `list(GoogleApi.DeploymentManager.V2.Model.Condition.t)`, *default:* `nil`) - Additional restrictions that must be met. All conditions must pass for the rule to match.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Human-readable description of the rule.
  *   `ins` (*type:* `list(String.t)`, *default:* `nil`) - If one or more 'in' clauses are specified, the rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in at least one of these entries.
  *   `logConfigs` (*type:* `list(GoogleApi.DeploymentManager.V2.Model.LogConfig.t)`, *default:* `nil`) - The config returned to callers of tech.iam.IAM.CheckPolicy for any entries that match the LOG action.
  *   `notIns` (*type:* `list(String.t)`, *default:* `nil`) - If one or more 'not_in' clauses are specified, the rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in none of the entries.
  *   `permissions` (*type:* `list(String.t)`, *default:* `nil`) - A permission is a string of form '..' (e.g., 'storage.buckets.list'). A value of '*' matches all permissions, and a verb part of '*' (e.g., 'storage.buckets.*') matches all verbs.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :action => String.t(),
          :conditions => list(GoogleApi.DeploymentManager.V2.Model.Condition.t()),
          :description => String.t(),
          :ins => list(String.t()),
          :logConfigs => list(GoogleApi.DeploymentManager.V2.Model.LogConfig.t()),
          :notIns => list(String.t()),
          :permissions => list(String.t())
        }

  field(:action)
  field(:conditions, as: GoogleApi.DeploymentManager.V2.Model.Condition, type: :list)
  field(:description)
  field(:ins, type: :list)
  field(:logConfigs, as: GoogleApi.DeploymentManager.V2.Model.LogConfig, type: :list)
  field(:notIns, type: :list)
  field(:permissions, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DeploymentManager.V2.Model.Rule do
  def decode(value, options) do
    GoogleApi.DeploymentManager.V2.Model.Rule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DeploymentManager.V2.Model.Rule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
