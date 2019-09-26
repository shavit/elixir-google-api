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

defmodule GoogleApi.UrlShortener.V1.Model.Url do
  @moduledoc """


  ## Attributes

  *   `analytics` (*type:* `GoogleApi.UrlShortener.V1.Model.AnalyticsSummary.t`, *default:* `nil`) - A summary of the click analytics for the short and long URL. Might not be present if not requested or currently unavailable.
  *   `created` (*type:* `String.t`, *default:* `nil`) - Time the short URL was created; ISO 8601 representation using the yyyy-MM-dd'T'HH:mm:ss.SSSZZ format, e.g. "2010-10-14T19:01:24.944+00:00".
  *   `id` (*type:* `String.t`, *default:* `nil`) - Short URL, e.g. "http://goo.gl/l6MS".
  *   `kind` (*type:* `String.t`, *default:* `urlshortener#url`) - The fixed string "urlshortener#url".
  *   `longUrl` (*type:* `String.t`, *default:* `nil`) - Long URL, e.g. "http://www.google.com/". Might not be present if the status is "REMOVED".
  *   `status` (*type:* `String.t`, *default:* `nil`) - Status of the target URL. Possible values: "OK", "MALWARE", "PHISHING", or "REMOVED". A URL might be marked "REMOVED" if it was flagged as spam, for example.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :analytics => GoogleApi.UrlShortener.V1.Model.AnalyticsSummary.t(),
          :created => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :longUrl => String.t(),
          :status => String.t()
        }

  field(:analytics, as: GoogleApi.UrlShortener.V1.Model.AnalyticsSummary)
  field(:created)
  field(:id)
  field(:kind)
  field(:longUrl)
  field(:status)
end

defimpl Poison.Decoder, for: GoogleApi.UrlShortener.V1.Model.Url do
  def decode(value, options) do
    GoogleApi.UrlShortener.V1.Model.Url.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.UrlShortener.V1.Model.Url do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
