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

defmodule GoogleApi.Manufacturers.V1.Model.Product do
  @moduledoc """
  Product data.

  ## Attributes

  *   `attributes` (*type:* `GoogleApi.Manufacturers.V1.Model.Attributes.t`, *default:* `nil`) - Attributes of the product uploaded to the Manufacturer Center. Manually
      edited attributes are taken into account.
  *   `contentLanguage` (*type:* `String.t`, *default:* `nil`) - The content language of the product as a two-letter ISO 639-1 language code
      (for example, en).
  *   `destinationStatuses` (*type:* `list(GoogleApi.Manufacturers.V1.Model.DestinationStatus.t)`, *default:* `nil`) - The status of the destinations.
  *   `issues` (*type:* `list(GoogleApi.Manufacturers.V1.Model.Issue.t)`, *default:* `nil`) - A server-generated list of issues associated with the product.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name in the format `{target_country}:{content_language}:{product_id}`.

      `target_country`   - The target country of the product as a CLDR territory
                           code (for example, US).

      `content_language` - The content language of the product as a two-letter
                           ISO 639-1 language code (for example, en).

      `product_id`     -   The ID of the product. For more information, see
                           https://support.google.com/manufacturers/answer/6124116#id.
  *   `parent` (*type:* `String.t`, *default:* `nil`) - Parent ID in the format `accounts/{account_id}`.

      `account_id` - The ID of the Manufacturer Center account.
  *   `productId` (*type:* `String.t`, *default:* `nil`) - The ID of the product. For more information, see
      https://support.google.com/manufacturers/answer/6124116#id.
  *   `targetCountry` (*type:* `String.t`, *default:* `nil`) - The target country of the product as a CLDR territory code (for example,
      US).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributes => GoogleApi.Manufacturers.V1.Model.Attributes.t(),
          :contentLanguage => String.t(),
          :destinationStatuses => list(GoogleApi.Manufacturers.V1.Model.DestinationStatus.t()),
          :issues => list(GoogleApi.Manufacturers.V1.Model.Issue.t()),
          :name => String.t(),
          :parent => String.t(),
          :productId => String.t(),
          :targetCountry => String.t()
        }

  field(:attributes, as: GoogleApi.Manufacturers.V1.Model.Attributes)
  field(:contentLanguage)
  field(:destinationStatuses, as: GoogleApi.Manufacturers.V1.Model.DestinationStatus, type: :list)
  field(:issues, as: GoogleApi.Manufacturers.V1.Model.Issue, type: :list)
  field(:name)
  field(:parent)
  field(:productId)
  field(:targetCountry)
end

defimpl Poison.Decoder, for: GoogleApi.Manufacturers.V1.Model.Product do
  def decode(value, options) do
    GoogleApi.Manufacturers.V1.Model.Product.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Manufacturers.V1.Model.Product do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
