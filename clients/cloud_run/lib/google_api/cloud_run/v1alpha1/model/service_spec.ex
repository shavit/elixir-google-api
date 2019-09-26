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

defmodule GoogleApi.CloudRun.V1alpha1.Model.ServiceSpec do
  @moduledoc """
  ServiceSpec holds the desired state of the Route (from the client), which
  is used to manipulate the underlying Route and Configuration(s).

  ## Attributes

  *   `generation` (*type:* `integer()`, *default:* `nil`) - Deprecated and not currently populated by Cloud Run. See
      metadata.generation instead, which is the sequence number containing the
      latest generation of the desired state.

      Read-only.
  *   `manual` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.ServiceSpecManualType.t`, *default:* `nil`) - Manual contains the options for configuring a manual service. See
      ServiceSpec for more details.

      Not currently supported by Cloud Run.
  *   `pinned` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.ServiceSpecPinnedType.t`, *default:* `nil`) - Pins this service to a specific revision name. The revision must
      be owned by the configuration provided.

      Deprecated and not supported by Cloud Run.
      +optional
  *   `release` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.ServiceSpecReleaseType.t`, *default:* `nil`) - Release enables gradual promotion of new revisions by allowing traffic
      to be split between two revisions. This type replaces the deprecated
      Pinned type.

      Not currently supported by Cloud Run.
  *   `runLatest` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.ServiceSpecRunLatest.t`, *default:* `nil`) - RunLatest defines a simple Service. It will automatically
      configure a route that keeps the latest ready revision
      from the supplied configuration running.
      +optional
  *   `template` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.RevisionTemplate.t`, *default:* `nil`) - Template holds the latest specification for the Revision to
      be stamped out.
  *   `traffic` (*type:* `list(GoogleApi.CloudRun.V1alpha1.Model.TrafficTarget.t)`, *default:* `nil`) - Traffic specifies how to distribute traffic over a collection of Knative
      Revisions and Configurations.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :generation => integer(),
          :manual => GoogleApi.CloudRun.V1alpha1.Model.ServiceSpecManualType.t(),
          :pinned => GoogleApi.CloudRun.V1alpha1.Model.ServiceSpecPinnedType.t(),
          :release => GoogleApi.CloudRun.V1alpha1.Model.ServiceSpecReleaseType.t(),
          :runLatest => GoogleApi.CloudRun.V1alpha1.Model.ServiceSpecRunLatest.t(),
          :template => GoogleApi.CloudRun.V1alpha1.Model.RevisionTemplate.t(),
          :traffic => list(GoogleApi.CloudRun.V1alpha1.Model.TrafficTarget.t())
        }

  field(:generation)
  field(:manual, as: GoogleApi.CloudRun.V1alpha1.Model.ServiceSpecManualType)
  field(:pinned, as: GoogleApi.CloudRun.V1alpha1.Model.ServiceSpecPinnedType)
  field(:release, as: GoogleApi.CloudRun.V1alpha1.Model.ServiceSpecReleaseType)
  field(:runLatest, as: GoogleApi.CloudRun.V1alpha1.Model.ServiceSpecRunLatest)
  field(:template, as: GoogleApi.CloudRun.V1alpha1.Model.RevisionTemplate)
  field(:traffic, as: GoogleApi.CloudRun.V1alpha1.Model.TrafficTarget, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.ServiceSpec do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.ServiceSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.ServiceSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
