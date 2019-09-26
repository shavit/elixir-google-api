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

defmodule GoogleApi.DFAReporting.V33.Model.CompatibleFields do
  @moduledoc """
  Represents a response to the queryCompatibleFields method.

  ## Attributes

  *   `crossDimensionReachReportCompatibleFields` (*type:* `GoogleApi.DFAReporting.V33.Model.CrossDimensionReachReportCompatibleFields.t`, *default:* `nil`) - Contains items that are compatible to be selected for a report of type "CROSS_DIMENSION_REACH".
  *   `floodlightReportCompatibleFields` (*type:* `GoogleApi.DFAReporting.V33.Model.FloodlightReportCompatibleFields.t`, *default:* `nil`) - Contains items that are compatible to be selected for a report of type "FLOODLIGHT".
  *   `kind` (*type:* `String.t`, *default:* `dfareporting#compatibleFields`) - The kind of resource this is, in this case dfareporting#compatibleFields.
  *   `pathToConversionReportCompatibleFields` (*type:* `GoogleApi.DFAReporting.V33.Model.PathToConversionReportCompatibleFields.t`, *default:* `nil`) - Contains items that are compatible to be selected for a report of type "PATH_TO_CONVERSION".
  *   `reachReportCompatibleFields` (*type:* `GoogleApi.DFAReporting.V33.Model.ReachReportCompatibleFields.t`, *default:* `nil`) - Contains items that are compatible to be selected for a report of type "REACH".
  *   `reportCompatibleFields` (*type:* `GoogleApi.DFAReporting.V33.Model.ReportCompatibleFields.t`, *default:* `nil`) - Contains items that are compatible to be selected for a report of type "STANDARD".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :crossDimensionReachReportCompatibleFields =>
            GoogleApi.DFAReporting.V33.Model.CrossDimensionReachReportCompatibleFields.t(),
          :floodlightReportCompatibleFields =>
            GoogleApi.DFAReporting.V33.Model.FloodlightReportCompatibleFields.t(),
          :kind => String.t(),
          :pathToConversionReportCompatibleFields =>
            GoogleApi.DFAReporting.V33.Model.PathToConversionReportCompatibleFields.t(),
          :reachReportCompatibleFields =>
            GoogleApi.DFAReporting.V33.Model.ReachReportCompatibleFields.t(),
          :reportCompatibleFields => GoogleApi.DFAReporting.V33.Model.ReportCompatibleFields.t()
        }

  field(
    :crossDimensionReachReportCompatibleFields,
    as: GoogleApi.DFAReporting.V33.Model.CrossDimensionReachReportCompatibleFields
  )

  field(
    :floodlightReportCompatibleFields,
    as: GoogleApi.DFAReporting.V33.Model.FloodlightReportCompatibleFields
  )

  field(:kind)

  field(
    :pathToConversionReportCompatibleFields,
    as: GoogleApi.DFAReporting.V33.Model.PathToConversionReportCompatibleFields
  )

  field(
    :reachReportCompatibleFields,
    as: GoogleApi.DFAReporting.V33.Model.ReachReportCompatibleFields
  )

  field(:reportCompatibleFields, as: GoogleApi.DFAReporting.V33.Model.ReportCompatibleFields)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.CompatibleFields do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.CompatibleFields.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.CompatibleFields do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
