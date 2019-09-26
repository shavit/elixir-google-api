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

defmodule GoogleApi.CloudRun.V1alpha1.Model.SecretVolumeSource do
  @moduledoc """
  The contents of the target Secret's Data field will be presented in a volume
  as files using the keys in the Data field as the file names.

  ## Attributes

  *   `defaultMode` (*type:* `integer()`, *default:* `nil`) - Mode bits to use on created files by default. Must be a value between 0 and
      0777. Defaults to 0644. Directories within the path are not affected by
      this setting. This might be in conflict with other options that affect the
      file mode, like fsGroup, and the result can be other mode bits set.
  *   `items` (*type:* `list(GoogleApi.CloudRun.V1alpha1.Model.KeyToPath.t)`, *default:* `nil`) - If unspecified, each key-value pair in the Data field of the referenced
      Secret will be projected into the volume as a file whose name is the
      key and content is the value. If specified, the listed keys will be
      projected into the specified paths, and unlisted keys will not be
      present. If a key is specified which is not present in the Secret,
      the volume setup will error unless it is marked optional.
  *   `optional` (*type:* `boolean()`, *default:* `nil`) - Specify whether the Secret or its keys must be defined.
  *   `secretName` (*type:* `String.t`, *default:* `nil`) - Name of the secret in the container's namespace to use.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :defaultMode => integer(),
          :items => list(GoogleApi.CloudRun.V1alpha1.Model.KeyToPath.t()),
          :optional => boolean(),
          :secretName => String.t()
        }

  field(:defaultMode)
  field(:items, as: GoogleApi.CloudRun.V1alpha1.Model.KeyToPath, type: :list)
  field(:optional)
  field(:secretName)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.SecretVolumeSource do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.SecretVolumeSource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.SecretVolumeSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
