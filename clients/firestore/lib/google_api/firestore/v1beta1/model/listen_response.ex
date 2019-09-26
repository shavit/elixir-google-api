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

defmodule GoogleApi.Firestore.V1beta1.Model.ListenResponse do
  @moduledoc """
  The response for Firestore.Listen.

  ## Attributes

  *   `documentChange` (*type:* `GoogleApi.Firestore.V1beta1.Model.DocumentChange.t`, *default:* `nil`) - A Document has changed.
  *   `documentDelete` (*type:* `GoogleApi.Firestore.V1beta1.Model.DocumentDelete.t`, *default:* `nil`) - A Document has been deleted.
  *   `documentRemove` (*type:* `GoogleApi.Firestore.V1beta1.Model.DocumentRemove.t`, *default:* `nil`) - A Document has been removed from a target (because it is no longer
      relevant to that target).
  *   `filter` (*type:* `GoogleApi.Firestore.V1beta1.Model.ExistenceFilter.t`, *default:* `nil`) - A filter to apply to the set of documents previously returned for the
      given target.

      Returned when documents may have been removed from the given target, but
      the exact documents are unknown.
  *   `targetChange` (*type:* `GoogleApi.Firestore.V1beta1.Model.TargetChange.t`, *default:* `nil`) - Targets have changed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :documentChange => GoogleApi.Firestore.V1beta1.Model.DocumentChange.t(),
          :documentDelete => GoogleApi.Firestore.V1beta1.Model.DocumentDelete.t(),
          :documentRemove => GoogleApi.Firestore.V1beta1.Model.DocumentRemove.t(),
          :filter => GoogleApi.Firestore.V1beta1.Model.ExistenceFilter.t(),
          :targetChange => GoogleApi.Firestore.V1beta1.Model.TargetChange.t()
        }

  field(:documentChange, as: GoogleApi.Firestore.V1beta1.Model.DocumentChange)
  field(:documentDelete, as: GoogleApi.Firestore.V1beta1.Model.DocumentDelete)
  field(:documentRemove, as: GoogleApi.Firestore.V1beta1.Model.DocumentRemove)
  field(:filter, as: GoogleApi.Firestore.V1beta1.Model.ExistenceFilter)
  field(:targetChange, as: GoogleApi.Firestore.V1beta1.Model.TargetChange)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1beta1.Model.ListenResponse do
  def decode(value, options) do
    GoogleApi.Firestore.V1beta1.Model.ListenResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1beta1.Model.ListenResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
