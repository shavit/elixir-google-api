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

defmodule GoogleApi.Compute.V1.Model.ShieldedInstanceIdentity do
  @moduledoc """
  A shielded Instance identity entry.

  ## Attributes

  *   `encryptionKey` (*type:* `GoogleApi.Compute.V1.Model.ShieldedInstanceIdentityEntry.t`, *default:* `nil`) - An Endorsement Key (EK) issued to the Shielded Instance's vTPM.
  *   `kind` (*type:* `String.t`, *default:* `compute#shieldedInstanceIdentity`) - [Output Only] Type of the resource. Always compute#shieldedInstanceIdentity for shielded Instance identity entry.
  *   `signingKey` (*type:* `GoogleApi.Compute.V1.Model.ShieldedInstanceIdentityEntry.t`, *default:* `nil`) - An Attestation Key (AK) issued to the Shielded Instance's vTPM.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :encryptionKey => GoogleApi.Compute.V1.Model.ShieldedInstanceIdentityEntry.t(),
          :kind => String.t(),
          :signingKey => GoogleApi.Compute.V1.Model.ShieldedInstanceIdentityEntry.t()
        }

  field(:encryptionKey, as: GoogleApi.Compute.V1.Model.ShieldedInstanceIdentityEntry)
  field(:kind)
  field(:signingKey, as: GoogleApi.Compute.V1.Model.ShieldedInstanceIdentityEntry)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.ShieldedInstanceIdentity do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.ShieldedInstanceIdentity.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.ShieldedInstanceIdentity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
