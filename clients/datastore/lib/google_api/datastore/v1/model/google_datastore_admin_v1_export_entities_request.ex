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

defmodule GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1ExportEntitiesRequest do
  @moduledoc """
  The request for
  google.datastore.admin.v1.DatastoreAdmin.ExportEntities.

  ## Attributes

  *   `entityFilter` (*type:* `GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1EntityFilter.t`, *default:* `nil`) - Description of what data from the project is included in the export.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Client-assigned labels.
  *   `outputUrlPrefix` (*type:* `String.t`, *default:* `nil`) - Location for the export metadata and data files.

      The full resource URL of the external storage location. Currently, only
      Google Cloud Storage is supported. So output_url_prefix should be of the
      form: `gs://BUCKET_NAME[/NAMESPACE_PATH]`, where `BUCKET_NAME` is the
      name of the Cloud Storage bucket and `NAMESPACE_PATH` is an optional Cloud
      Storage namespace path (this is not a Cloud Datastore namespace). For more
      information about Cloud Storage namespace paths, see
      [Object name
      considerations](https://cloud.google.com/storage/docs/naming#object-considerations).

      The resulting files will be nested deeper than the specified URL prefix.
      The final output URL will be provided in the
      google.datastore.admin.v1.ExportEntitiesResponse.output_url field. That
      value should be used for subsequent ImportEntities operations.

      By nesting the data files deeper, the same Cloud Storage bucket can be used
      in multiple ExportEntities operations without conflict.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entityFilter => GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1EntityFilter.t(),
          :labels => map(),
          :outputUrlPrefix => String.t()
        }

  field(:entityFilter, as: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1EntityFilter)
  field(:labels, type: :map)
  field(:outputUrlPrefix)
end

defimpl Poison.Decoder,
  for: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1ExportEntitiesRequest do
  def decode(value, options) do
    GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1ExportEntitiesRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1ExportEntitiesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
