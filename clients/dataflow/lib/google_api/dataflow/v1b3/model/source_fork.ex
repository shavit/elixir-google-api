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

defmodule GoogleApi.Dataflow.V1b3.Model.SourceFork do
  @moduledoc """
  DEPRECATED in favor of DynamicSourceSplit.

  ## Attributes

  *   `primary` (*type:* `GoogleApi.Dataflow.V1b3.Model.SourceSplitShard.t`, *default:* `nil`) - DEPRECATED
  *   `primarySource` (*type:* `GoogleApi.Dataflow.V1b3.Model.DerivedSource.t`, *default:* `nil`) - DEPRECATED
  *   `residual` (*type:* `GoogleApi.Dataflow.V1b3.Model.SourceSplitShard.t`, *default:* `nil`) - DEPRECATED
  *   `residualSource` (*type:* `GoogleApi.Dataflow.V1b3.Model.DerivedSource.t`, *default:* `nil`) - DEPRECATED
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :primary => GoogleApi.Dataflow.V1b3.Model.SourceSplitShard.t(),
          :primarySource => GoogleApi.Dataflow.V1b3.Model.DerivedSource.t(),
          :residual => GoogleApi.Dataflow.V1b3.Model.SourceSplitShard.t(),
          :residualSource => GoogleApi.Dataflow.V1b3.Model.DerivedSource.t()
        }

  field(:primary, as: GoogleApi.Dataflow.V1b3.Model.SourceSplitShard)
  field(:primarySource, as: GoogleApi.Dataflow.V1b3.Model.DerivedSource)
  field(:residual, as: GoogleApi.Dataflow.V1b3.Model.SourceSplitShard)
  field(:residualSource, as: GoogleApi.Dataflow.V1b3.Model.DerivedSource)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.SourceFork do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.SourceFork.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.SourceFork do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
