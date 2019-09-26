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

defmodule GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation do
  @moduledoc """
  Annotations corresponding to one tracked object.

  ## Attributes

  *   `confidence` (*type:* `number()`, *default:* `nil`) - Object category's labeling confidence of this track.
  *   `entity` (*type:* `GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_Entity.t`, *default:* `nil`) - Entity to specify the object category that this track is labeled as.
  *   `frames` (*type:* `list(GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame.t)`, *default:* `nil`) - Information corresponding to all frames where this object track appears.
      Non-streaming batch mode: it may be one or multiple ObjectTrackingFrame
      messages in frames.
      Streaming mode: it can only be one ObjectTrackingFrame message in frames.
  *   `segment` (*type:* `GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_VideoSegment.t`, *default:* `nil`) - Non-streaming batch mode ONLY.
      Each object track corresponds to one video segment where it appears.
  *   `trackId` (*type:* `String.t`, *default:* `nil`) - Streaming mode ONLY.
      In streaming mode, we do not know the end time of a tracked object
      before it is completed. Hence, there is no VideoSegment info returned.
      Instead, we provide a unique identifiable integer track_id so that
      the customers can correlate the results of the ongoing
      ObjectTrackAnnotation of the same track_id over time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :confidence => number(),
          :entity =>
            GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_Entity.t(),
          :frames =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame.t()
            ),
          :segment =>
            GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_VideoSegment.t(),
          :trackId => String.t()
        }

  field(:confidence)

  field(
    :entity,
    as: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_Entity
  )

  field(
    :frames,
    as:
      GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame,
    type: :list
  )

  field(
    :segment,
    as: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_VideoSegment
  )

  field(:trackId)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation do
  def decode(value, options) do
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
