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

defmodule GoogleApi.AdExperienceReport.V1.Model.SiteSummaryResponse do
  @moduledoc """
  Response message for GetSiteSummary.

  ## Attributes

  *   `desktopSummary` (*type:* `GoogleApi.AdExperienceReport.V1.Model.PlatformSummary.t`, *default:* `nil`) - The site's Ad Experience Report summary on desktop.
  *   `mobileSummary` (*type:* `GoogleApi.AdExperienceReport.V1.Model.PlatformSummary.t`, *default:* `nil`) - The site's Ad Experience Report summary on mobile.
  *   `reviewedSite` (*type:* `String.t`, *default:* `nil`) - The name of the reviewed site, e.g. `google.com`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :desktopSummary => GoogleApi.AdExperienceReport.V1.Model.PlatformSummary.t(),
          :mobileSummary => GoogleApi.AdExperienceReport.V1.Model.PlatformSummary.t(),
          :reviewedSite => String.t()
        }

  field(:desktopSummary, as: GoogleApi.AdExperienceReport.V1.Model.PlatformSummary)
  field(:mobileSummary, as: GoogleApi.AdExperienceReport.V1.Model.PlatformSummary)
  field(:reviewedSite)
end

defimpl Poison.Decoder, for: GoogleApi.AdExperienceReport.V1.Model.SiteSummaryResponse do
  def decode(value, options) do
    GoogleApi.AdExperienceReport.V1.Model.SiteSummaryResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExperienceReport.V1.Model.SiteSummaryResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
