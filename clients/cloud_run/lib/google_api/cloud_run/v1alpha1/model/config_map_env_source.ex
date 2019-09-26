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

defmodule GoogleApi.CloudRun.V1alpha1.Model.ConfigMapEnvSource do
  @moduledoc """
  ConfigMapEnvSource selects a ConfigMap to populate the environment
  variables with.

  The contents of the target ConfigMap's Data field will represent the
  key-value pairs as environment variables.

  ## Attributes

  *   `localObjectReference` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.LocalObjectReference.t`, *default:* `nil`) - This field should not be used directly as it is meant to be inlined
      directly into the message. Use the "name" field instead.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Cloud Run fully managed: not supported

      Cloud Run for Anthos: supported

      The ConfigMap to select from.
  *   `optional` (*type:* `boolean()`, *default:* `nil`) - Cloud Run fully managed: not supported

      Cloud Run for Anthos: supported

      Specify whether the ConfigMap must be defined
      +optional
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :localObjectReference => GoogleApi.CloudRun.V1alpha1.Model.LocalObjectReference.t(),
          :name => String.t(),
          :optional => boolean()
        }

  field(:localObjectReference, as: GoogleApi.CloudRun.V1alpha1.Model.LocalObjectReference)
  field(:name)
  field(:optional)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.ConfigMapEnvSource do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.ConfigMapEnvSource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.ConfigMapEnvSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
