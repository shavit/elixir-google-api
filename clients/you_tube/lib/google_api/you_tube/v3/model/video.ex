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

defmodule GoogleApi.YouTube.V3.Model.Video do
  @moduledoc """
  A video resource represents a YouTube video.

  ## Attributes

  *   `ageGating` (*type:* `GoogleApi.YouTube.V3.Model.VideoAgeGating.t`, *default:* `nil`) - Age restriction details related to a video. This data can only be retrieved by the video owner.
  *   `contentDetails` (*type:* `GoogleApi.YouTube.V3.Model.VideoContentDetails.t`, *default:* `nil`) - The contentDetails object contains information about the video content, including the length of the video and its aspect ratio.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Etag of this resource.
  *   `fileDetails` (*type:* `GoogleApi.YouTube.V3.Model.VideoFileDetails.t`, *default:* `nil`) - The fileDetails object encapsulates information about the video file that was uploaded to YouTube, including the file's resolution, duration, audio and video codecs, stream bitrates, and more. This data can only be retrieved by the video owner.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID that YouTube uses to uniquely identify the video.
  *   `kind` (*type:* `String.t`, *default:* `youtube#video`) - Identifies what kind of resource this is. Value: the fixed string "youtube#video".
  *   `liveStreamingDetails` (*type:* `GoogleApi.YouTube.V3.Model.VideoLiveStreamingDetails.t`, *default:* `nil`) - The liveStreamingDetails object contains metadata about a live video broadcast. The object will only be present in a video resource if the video is an upcoming, live, or completed live broadcast.
  *   `localizations` (*type:* `%{optional(String.t) => GoogleApi.YouTube.V3.Model.VideoLocalization.t}`, *default:* `nil`) - List with all localizations.
  *   `monetizationDetails` (*type:* `GoogleApi.YouTube.V3.Model.VideoMonetizationDetails.t`, *default:* `nil`) - The monetizationDetails object encapsulates information about the monetization status of the video.
  *   `player` (*type:* `GoogleApi.YouTube.V3.Model.VideoPlayer.t`, *default:* `nil`) - The player object contains information that you would use to play the video in an embedded player.
  *   `processingDetails` (*type:* `GoogleApi.YouTube.V3.Model.VideoProcessingDetails.t`, *default:* `nil`) - The processingDetails object encapsulates information about YouTube's progress in processing the uploaded video file. The properties in the object identify the current processing status and an estimate of the time remaining until YouTube finishes processing the video. This part also indicates whether different types of data or content, such as file details or thumbnail images, are available for the video.

      The processingProgress object is designed to be polled so that the video uploaded can track the progress that YouTube has made in processing the uploaded video file. This data can only be retrieved by the video owner.
  *   `projectDetails` (*type:* `GoogleApi.YouTube.V3.Model.VideoProjectDetails.t`, *default:* `nil`) - The projectDetails object contains information about the project specific video metadata.
  *   `recordingDetails` (*type:* `GoogleApi.YouTube.V3.Model.VideoRecordingDetails.t`, *default:* `nil`) - The recordingDetails object encapsulates information about the location, date and address where the video was recorded.
  *   `snippet` (*type:* `GoogleApi.YouTube.V3.Model.VideoSnippet.t`, *default:* `nil`) - The snippet object contains basic details about the video, such as its title, description, and category.
  *   `statistics` (*type:* `GoogleApi.YouTube.V3.Model.VideoStatistics.t`, *default:* `nil`) - The statistics object contains statistics about the video.
  *   `status` (*type:* `GoogleApi.YouTube.V3.Model.VideoStatus.t`, *default:* `nil`) - The status object contains information about the video's uploading, processing, and privacy statuses.
  *   `suggestions` (*type:* `GoogleApi.YouTube.V3.Model.VideoSuggestions.t`, *default:* `nil`) - The suggestions object encapsulates suggestions that identify opportunities to improve the video quality or the metadata for the uploaded video. This data can only be retrieved by the video owner.
  *   `topicDetails` (*type:* `GoogleApi.YouTube.V3.Model.VideoTopicDetails.t`, *default:* `nil`) - The topicDetails object encapsulates information about Freebase topics associated with the video.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ageGating => GoogleApi.YouTube.V3.Model.VideoAgeGating.t(),
          :contentDetails => GoogleApi.YouTube.V3.Model.VideoContentDetails.t(),
          :etag => String.t(),
          :fileDetails => GoogleApi.YouTube.V3.Model.VideoFileDetails.t(),
          :id => String.t(),
          :kind => String.t(),
          :liveStreamingDetails => GoogleApi.YouTube.V3.Model.VideoLiveStreamingDetails.t(),
          :localizations => %{
            optional(String.t()) => GoogleApi.YouTube.V3.Model.VideoLocalization.t()
          },
          :monetizationDetails => GoogleApi.YouTube.V3.Model.VideoMonetizationDetails.t(),
          :player => GoogleApi.YouTube.V3.Model.VideoPlayer.t(),
          :processingDetails => GoogleApi.YouTube.V3.Model.VideoProcessingDetails.t(),
          :projectDetails => GoogleApi.YouTube.V3.Model.VideoProjectDetails.t(),
          :recordingDetails => GoogleApi.YouTube.V3.Model.VideoRecordingDetails.t(),
          :snippet => GoogleApi.YouTube.V3.Model.VideoSnippet.t(),
          :statistics => GoogleApi.YouTube.V3.Model.VideoStatistics.t(),
          :status => GoogleApi.YouTube.V3.Model.VideoStatus.t(),
          :suggestions => GoogleApi.YouTube.V3.Model.VideoSuggestions.t(),
          :topicDetails => GoogleApi.YouTube.V3.Model.VideoTopicDetails.t()
        }

  field(:ageGating, as: GoogleApi.YouTube.V3.Model.VideoAgeGating)
  field(:contentDetails, as: GoogleApi.YouTube.V3.Model.VideoContentDetails)
  field(:etag)
  field(:fileDetails, as: GoogleApi.YouTube.V3.Model.VideoFileDetails)
  field(:id)
  field(:kind)
  field(:liveStreamingDetails, as: GoogleApi.YouTube.V3.Model.VideoLiveStreamingDetails)
  field(:localizations, as: GoogleApi.YouTube.V3.Model.VideoLocalization, type: :map)
  field(:monetizationDetails, as: GoogleApi.YouTube.V3.Model.VideoMonetizationDetails)
  field(:player, as: GoogleApi.YouTube.V3.Model.VideoPlayer)
  field(:processingDetails, as: GoogleApi.YouTube.V3.Model.VideoProcessingDetails)
  field(:projectDetails, as: GoogleApi.YouTube.V3.Model.VideoProjectDetails)
  field(:recordingDetails, as: GoogleApi.YouTube.V3.Model.VideoRecordingDetails)
  field(:snippet, as: GoogleApi.YouTube.V3.Model.VideoSnippet)
  field(:statistics, as: GoogleApi.YouTube.V3.Model.VideoStatistics)
  field(:status, as: GoogleApi.YouTube.V3.Model.VideoStatus)
  field(:suggestions, as: GoogleApi.YouTube.V3.Model.VideoSuggestions)
  field(:topicDetails, as: GoogleApi.YouTube.V3.Model.VideoTopicDetails)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.Video do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.Video.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.Video do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
