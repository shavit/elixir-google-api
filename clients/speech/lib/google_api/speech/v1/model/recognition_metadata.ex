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

defmodule GoogleApi.Speech.V1.Model.RecognitionMetadata do
  @moduledoc """
  Description of audio data to be recognized.

  ## Attributes

  *   `audioTopic` (*type:* `String.t`, *default:* `nil`) - Description of the content. Eg. "Recordings of federal supreme court
      hearings from 2012".
  *   `industryNaicsCodeOfAudio` (*type:* `integer()`, *default:* `nil`) - The industry vertical to which this speech recognition request most
      closely applies. This is most indicative of the topics contained
      in the audio.  Use the 6-digit NAICS code to identify the industry
      vertical - see https://www.naics.com/search/.
  *   `interactionType` (*type:* `String.t`, *default:* `nil`) - The use case most closely describing the audio content to be recognized.
  *   `microphoneDistance` (*type:* `String.t`, *default:* `nil`) - The audio type that most closely describes the audio being recognized.
  *   `obfuscatedId` (*type:* `String.t`, *default:* `nil`) - Obfuscated (privacy-protected) ID of the user, to identify number of
      unique users using the service.
  *   `originalMediaType` (*type:* `String.t`, *default:* `nil`) - The original media the speech was recorded on.
  *   `originalMimeType` (*type:* `String.t`, *default:* `nil`) - Mime type of the original audio file.  For example `audio/m4a`,
      `audio/x-alaw-basic`, `audio/mp3`, `audio/3gpp`.
      A list of possible audio mime types is maintained at
      http://www.iana.org/assignments/media-types/media-types.xhtml#audio
  *   `recordingDeviceName` (*type:* `String.t`, *default:* `nil`) - The device used to make the recording.  Examples 'Nexus 5X' or
      'Polycom SoundStation IP 6000' or 'POTS' or 'VoIP' or
      'Cardioid Microphone'.
  *   `recordingDeviceType` (*type:* `String.t`, *default:* `nil`) - The type of device the speech was recorded with.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :audioTopic => String.t(),
          :industryNaicsCodeOfAudio => integer(),
          :interactionType => String.t(),
          :microphoneDistance => String.t(),
          :obfuscatedId => String.t(),
          :originalMediaType => String.t(),
          :originalMimeType => String.t(),
          :recordingDeviceName => String.t(),
          :recordingDeviceType => String.t()
        }

  field(:audioTopic)
  field(:industryNaicsCodeOfAudio)
  field(:interactionType)
  field(:microphoneDistance)
  field(:obfuscatedId)
  field(:originalMediaType)
  field(:originalMimeType)
  field(:recordingDeviceName)
  field(:recordingDeviceType)
end

defimpl Poison.Decoder, for: GoogleApi.Speech.V1.Model.RecognitionMetadata do
  def decode(value, options) do
    GoogleApi.Speech.V1.Model.RecognitionMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Speech.V1.Model.RecognitionMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
