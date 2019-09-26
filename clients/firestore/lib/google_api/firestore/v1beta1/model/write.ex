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

defmodule GoogleApi.Firestore.V1beta1.Model.Write do
  @moduledoc """
  A write on a document.

  ## Attributes

  *   `currentDocument` (*type:* `GoogleApi.Firestore.V1beta1.Model.Precondition.t`, *default:* `nil`) - An optional precondition on the document.

      The write will fail if this is set and not met by the target document.
  *   `delete` (*type:* `String.t`, *default:* `nil`) - A document name to delete. In the format:
      `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  *   `transform` (*type:* `GoogleApi.Firestore.V1beta1.Model.DocumentTransform.t`, *default:* `nil`) - Applies a transformation to a document.
      At most one `transform` per document is allowed in a given request.
      An `update` cannot follow a `transform` on the same document in a given
      request.
  *   `update` (*type:* `GoogleApi.Firestore.V1beta1.Model.Document.t`, *default:* `nil`) - A document to write.
  *   `updateMask` (*type:* `GoogleApi.Firestore.V1beta1.Model.DocumentMask.t`, *default:* `nil`) - The fields to update in this write.

      This field can be set only when the operation is `update`.
      If the mask is not set for an `update` and the document exists, any
      existing data will be overwritten.
      If the mask is set and the document on the server has fields not covered by
      the mask, they are left unchanged.
      Fields referenced in the mask, but not present in the input document, are
      deleted from the document on the server.
      The field paths in this mask must not contain a reserved field name.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :currentDocument => GoogleApi.Firestore.V1beta1.Model.Precondition.t(),
          :delete => String.t(),
          :transform => GoogleApi.Firestore.V1beta1.Model.DocumentTransform.t(),
          :update => GoogleApi.Firestore.V1beta1.Model.Document.t(),
          :updateMask => GoogleApi.Firestore.V1beta1.Model.DocumentMask.t()
        }

  field(:currentDocument, as: GoogleApi.Firestore.V1beta1.Model.Precondition)
  field(:delete)
  field(:transform, as: GoogleApi.Firestore.V1beta1.Model.DocumentTransform)
  field(:update, as: GoogleApi.Firestore.V1beta1.Model.Document)
  field(:updateMask, as: GoogleApi.Firestore.V1beta1.Model.DocumentMask)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1beta1.Model.Write do
  def decode(value, options) do
    GoogleApi.Firestore.V1beta1.Model.Write.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1beta1.Model.Write do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
