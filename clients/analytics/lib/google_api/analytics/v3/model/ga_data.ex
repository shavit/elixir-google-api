# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Analytics.V3.Model.GaData do
  @moduledoc """
  Analytics data for a given view (profile).

  ## Attributes

  - columnHeaders ([GaDataColumnHeaders]): Column headers that list dimension names followed by the metric names. The order of dimensions and metrics is same as specified in the request. Defaults to: `null`.
  - containsSampledData (boolean()): Determines if Analytics data contains samples. Defaults to: `null`.
  - dataLastRefreshed (String.t): The last refreshed time in seconds for Analytics data. Defaults to: `null`.
  - dataTable (GaDataDataTable):  Defaults to: `null`.
  - id (String.t): Unique ID for this data response. Defaults to: `null`.
  - itemsPerPage (integer()): The maximum number of rows the response can contain, regardless of the actual number of rows returned. Its value ranges from 1 to 10,000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. Defaults to: `null`.
  - kind (String.t): Resource type. Defaults to: `null`.
  - nextLink (String.t): Link to next page for this Analytics data query. Defaults to: `null`.
  - previousLink (String.t): Link to previous page for this Analytics data query. Defaults to: `null`.
  - profileInfo (GaDataProfileInfo):  Defaults to: `null`.
  - query (GaDataQuery):  Defaults to: `null`.
  - rows ([[String.t]]): Analytics data rows, where each row contains a list of dimension values followed by the metric values. The order of dimensions and metrics is same as specified in the request. Defaults to: `null`.
  - sampleSize (String.t): The number of samples used to calculate the result. Defaults to: `null`.
  - sampleSpace (String.t): Total size of the sample space from which the samples were selected. Defaults to: `null`.
  - selfLink (String.t): Link to this page. Defaults to: `null`.
  - totalResults (integer()): The total number of rows for the query, regardless of the number of rows in the response. Defaults to: `null`.
  - totalsForAllResults (%{optional(String.t) &#x3D;&gt; String.t}): Total values for the requested metrics over all the results, not just the results returned in this response. The order of the metric totals is same as the metric order specified in the request. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :columnHeaders => list(GoogleApi.Analytics.V3.Model.GaDataColumnHeaders.t()),
          :containsSampledData => any(),
          :dataLastRefreshed => any(),
          :dataTable => GoogleApi.Analytics.V3.Model.GaDataDataTable.t(),
          :id => any(),
          :itemsPerPage => any(),
          :kind => any(),
          :nextLink => any(),
          :previousLink => any(),
          :profileInfo => GoogleApi.Analytics.V3.Model.GaDataProfileInfo.t(),
          :query => GoogleApi.Analytics.V3.Model.GaDataQuery.t(),
          :rows => list(),
          :sampleSize => any(),
          :sampleSpace => any(),
          :selfLink => any(),
          :totalResults => any(),
          :totalsForAllResults => map()
        }

  field(:columnHeaders, as: GoogleApi.Analytics.V3.Model.GaDataColumnHeaders, type: :list)
  field(:containsSampledData)
  field(:dataLastRefreshed)
  field(:dataTable, as: GoogleApi.Analytics.V3.Model.GaDataDataTable)
  field(:id)
  field(:itemsPerPage)
  field(:kind)
  field(:nextLink)
  field(:previousLink)
  field(:profileInfo, as: GoogleApi.Analytics.V3.Model.GaDataProfileInfo)
  field(:query, as: GoogleApi.Analytics.V3.Model.GaDataQuery)
  field(:rows, type: :list)
  field(:sampleSize)
  field(:sampleSpace)
  field(:selfLink)
  field(:totalResults)
  field(:totalsForAllResults, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.GaData do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.GaData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.GaData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end