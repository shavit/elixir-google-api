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

defmodule GoogleApi.Dataflow.V1b3.Model.Source do
  @moduledoc """
  A source that records can be read and decoded from.

  ## Attributes

  *   `baseSpecs` (*type:* `list(map())`, *default:* `nil`) - While splitting, sources may specify the produced bundles
      as differences against another source, in order to save backend-side
      memory and allow bigger jobs. For details, see SourceSplitRequest.
      To support this use case, the full set of parameters of the source
      is logically obtained by taking the latest explicitly specified value
      of each parameter in the order:
      base_specs (later items win), spec (overrides anything in base_specs).
  *   `codec` (*type:* `map()`, *default:* `nil`) - The codec to use to decode data read from the source.
  *   `doesNotNeedSplitting` (*type:* `boolean()`, *default:* `nil`) - Setting this value to true hints to the framework that the source
      doesn't need splitting, and using SourceSplitRequest on it would
      yield SOURCE_SPLIT_OUTCOME_USE_CURRENT.

      E.g. a file splitter may set this to true when splitting a single file
      into a set of byte ranges of appropriate size, and set this
      to false when splitting a filepattern into individual files.
      However, for efficiency, a file splitter may decide to produce
      file subranges directly from the filepattern to avoid a splitting
      round-trip.

      See SourceSplitRequest for an overview of the splitting process.

      This field is meaningful only in the Source objects populated
      by the user (e.g. when filling in a DerivedSource).
      Source objects supplied by the framework to the user don't have
      this field populated.
  *   `metadata` (*type:* `GoogleApi.Dataflow.V1b3.Model.SourceMetadata.t`, *default:* `nil`) - Optionally, metadata for this source can be supplied right away,
      avoiding a SourceGetMetadataOperation roundtrip
      (see SourceOperationRequest).

      This field is meaningful only in the Source objects populated
      by the user (e.g. when filling in a DerivedSource).
      Source objects supplied by the framework to the user don't have
      this field populated.
  *   `spec` (*type:* `map()`, *default:* `nil`) - The source to read from, plus its parameters.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :baseSpecs => list(map()),
          :codec => map(),
          :doesNotNeedSplitting => boolean(),
          :metadata => GoogleApi.Dataflow.V1b3.Model.SourceMetadata.t(),
          :spec => map()
        }

  field(:baseSpecs, type: :list)
  field(:codec, type: :map)
  field(:doesNotNeedSplitting)
  field(:metadata, as: GoogleApi.Dataflow.V1b3.Model.SourceMetadata)
  field(:spec, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.Source do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.Source.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.Source do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
