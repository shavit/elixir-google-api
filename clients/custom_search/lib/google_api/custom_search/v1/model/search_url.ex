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

defmodule GoogleApi.CustomSearch.V1.Model.SearchUrl do
  @moduledoc """


  ## Attributes

  *   `template` (*type:* `String.t`, *default:* `https://www.googleapis.com/customsearch/v1?q={searchTerms}&num={count?}&start={startIndex?}&lr={language?}&safe={safe?}&cx={cx?}&sort={sort?}&filter={filter?}&gl={gl?}&cr={cr?}&googlehost={googleHost?}&c2coff={disableCnTwTranslation?}&hq={hq?}&hl={hl?}&siteSearch={siteSearch?}&siteSearchFilter={siteSearchFilter?}&exactTerms={exactTerms?}&excludeTerms={excludeTerms?}&linkSite={linkSite?}&orTerms={orTerms?}&relatedSite={relatedSite?}&dateRestrict={dateRestrict?}&lowRange={lowRange?}&highRange={highRange?}&searchType={searchType}&fileType={fileType?}&rights={rights?}&imgSize={imgSize?}&imgType={imgType?}&imgColorType={imgColorType?}&imgDominantColor={imgDominantColor?}&alt=json`) - 
  *   `type` (*type:* `String.t`, *default:* `application/json`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :template => String.t(),
          :type => String.t()
        }

  field(:template)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.CustomSearch.V1.Model.SearchUrl do
  def decode(value, options) do
    GoogleApi.CustomSearch.V1.Model.SearchUrl.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CustomSearch.V1.Model.SearchUrl do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
