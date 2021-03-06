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

defmodule GoogleApi.Compute.V1.Model.ResourcePolicySnapshotSchedulePolicy do
  @moduledoc """
  A snapshot schedule policy specifies when and how frequently snapshots are to be created for the target disk. Also specifies how many and how long these scheduled snapshots should be retained.

  ## Attributes

  *   `retentionPolicy` (*type:* `GoogleApi.Compute.V1.Model.ResourcePolicySnapshotSchedulePolicyRetentionPolicy.t`, *default:* `nil`) - Retention policy applied to snapshots created by this resource policy.
  *   `schedule` (*type:* `GoogleApi.Compute.V1.Model.ResourcePolicySnapshotSchedulePolicySchedule.t`, *default:* `nil`) - A Vm Maintenance Policy specifies what kind of infrastructure maintenance we are allowed to perform on this VM and when. Schedule that is applied to disks covered by this policy.
  *   `snapshotProperties` (*type:* `GoogleApi.Compute.V1.Model.ResourcePolicySnapshotSchedulePolicySnapshotProperties.t`, *default:* `nil`) - Properties with which snapshots are created such as labels, encryption keys.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :retentionPolicy =>
            GoogleApi.Compute.V1.Model.ResourcePolicySnapshotSchedulePolicyRetentionPolicy.t(),
          :schedule =>
            GoogleApi.Compute.V1.Model.ResourcePolicySnapshotSchedulePolicySchedule.t(),
          :snapshotProperties =>
            GoogleApi.Compute.V1.Model.ResourcePolicySnapshotSchedulePolicySnapshotProperties.t()
        }

  field(
    :retentionPolicy,
    as: GoogleApi.Compute.V1.Model.ResourcePolicySnapshotSchedulePolicyRetentionPolicy
  )

  field(:schedule, as: GoogleApi.Compute.V1.Model.ResourcePolicySnapshotSchedulePolicySchedule)

  field(
    :snapshotProperties,
    as: GoogleApi.Compute.V1.Model.ResourcePolicySnapshotSchedulePolicySnapshotProperties
  )
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.ResourcePolicySnapshotSchedulePolicy do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.ResourcePolicySnapshotSchedulePolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.ResourcePolicySnapshotSchedulePolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
