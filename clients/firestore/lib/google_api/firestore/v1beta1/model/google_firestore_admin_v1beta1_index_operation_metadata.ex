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

defmodule GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1IndexOperationMetadata do
  @moduledoc """
  Metadata for index operations. This metadata populates
  the metadata field of google.longrunning.Operation.

  ## Attributes

  *   `cancelled` (*type:* `boolean()`, *default:* `nil`) - True if the [google.longrunning.Operation] was cancelled. If the
      cancellation is in progress, cancelled will be true but
      google.longrunning.Operation.done will be false.
  *   `documentProgress` (*type:* `GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1Progress.t`, *default:* `nil`) - Progress of the existing operation, measured in number of documents.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - The time the operation ended, either successfully or otherwise. Unset if
      the operation is still active.
  *   `index` (*type:* `String.t`, *default:* `nil`) - The index resource that this operation is acting on. For example:
      `projects/{project_id}/databases/{database_id}/indexes/{index_id}`
  *   `operationType` (*type:* `String.t`, *default:* `nil`) - The type of index operation.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - The time that work began on the operation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cancelled => boolean(),
          :documentProgress =>
            GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1Progress.t(),
          :endTime => DateTime.t(),
          :index => String.t(),
          :operationType => String.t(),
          :startTime => DateTime.t()
        }

  field(:cancelled)

  field(
    :documentProgress,
    as: GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1Progress
  )

  field(:endTime, as: DateTime)
  field(:index)
  field(:operationType)
  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1IndexOperationMetadata do
  def decode(value, options) do
    GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1IndexOperationMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1IndexOperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
