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

defmodule GoogleApi.Dataproc.V1.Model.ClusterStatus do
  @moduledoc """
  The status of a cluster and its instances.

  ## Attributes

  *   `detail` (*type:* `String.t`, *default:* `nil`) - Output only. Optional details of cluster's state.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The cluster's state.
  *   `stateStartTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when this state was entered.
  *   `substate` (*type:* `String.t`, *default:* `nil`) - Output only. Additional state information that includes status reported by the agent.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :detail => String.t(),
          :state => String.t(),
          :stateStartTime => DateTime.t(),
          :substate => String.t()
        }

  field(:detail)
  field(:state)
  field(:stateStartTime, as: DateTime)
  field(:substate)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.ClusterStatus do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.ClusterStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.ClusterStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
