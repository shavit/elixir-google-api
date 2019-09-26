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

defmodule GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription do
  @moduledoc """
  A speech recognition result corresponding to a portion of the audio.

  ## Attributes

  *   `alternatives` (*type:* `list(GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative.t)`, *default:* `nil`) - May contain one or more recognition hypotheses (up to the maximum specified
      in `max_alternatives`).  These alternatives are ordered in terms of
      accuracy, with the top (first) alternative being the most probable, as
      ranked by the recognizer.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Output only. The
      [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag of the
      language in this result. This language code was detected to have the most
      likelihood of being spoken in the audio.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alternatives =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative.t()
            ),
          :languageCode => String.t()
        }

  field(
    :alternatives,
    as:
      GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative,
    type: :list
  )

  field(:languageCode)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription do
  def decode(value, options) do
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
