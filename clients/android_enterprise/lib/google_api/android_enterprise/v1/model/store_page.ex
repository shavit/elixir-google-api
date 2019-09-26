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

defmodule GoogleApi.AndroidEnterprise.V1.Model.StorePage do
  @moduledoc """
  Definition of a managed Google Play store page, made of a localized name and links to other pages. A page also contains clusters defined as a subcollection.

  ## Attributes

  *   `id` (*type:* `String.t`, *default:* `nil`) - Unique ID of this page. Assigned by the server. Immutable once assigned.
  *   `kind` (*type:* `String.t`, *default:* `androidenterprise#storePage`) - Identifies what kind of resource this is. Value: the fixed string "androidenterprise#storePage".
  *   `link` (*type:* `list(String.t)`, *default:* `nil`) - Ordered list of pages a user should be able to reach from this page. The list can't include this page. It is recommended that the basic pages are created first, before adding the links between pages.

      The API doesn't verify that the pages exist or the pages are reachable.
  *   `name` (*type:* `list(GoogleApi.AndroidEnterprise.V1.Model.LocalizedText.t)`, *default:* `nil`) - Ordered list of localized strings giving the name of this page. The text displayed is the one that best matches the user locale, or the first entry if there is no good match. There needs to be at least one entry.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t(),
          :kind => String.t(),
          :link => list(String.t()),
          :name => list(GoogleApi.AndroidEnterprise.V1.Model.LocalizedText.t())
        }

  field(:id)
  field(:kind)
  field(:link, type: :list)
  field(:name, as: GoogleApi.AndroidEnterprise.V1.Model.LocalizedText, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.StorePage do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.StorePage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.StorePage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
