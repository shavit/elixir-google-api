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

defmodule GoogleApi.Dataflow.V1b3.Model.CounterStructuredNameAndMetadata do
  @moduledoc """
  A single message which encapsulates structured name and metadata for a given
  counter.

  ## Attributes

  *   `metadata` (*type:* `GoogleApi.Dataflow.V1b3.Model.CounterMetadata.t`, *default:* `nil`) - Metadata associated with a counter
  *   `name` (*type:* `GoogleApi.Dataflow.V1b3.Model.CounterStructuredName.t`, *default:* `nil`) - Structured name of the counter.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :metadata => GoogleApi.Dataflow.V1b3.Model.CounterMetadata.t(),
          :name => GoogleApi.Dataflow.V1b3.Model.CounterStructuredName.t()
        }

  field(:metadata, as: GoogleApi.Dataflow.V1b3.Model.CounterMetadata)
  field(:name, as: GoogleApi.Dataflow.V1b3.Model.CounterStructuredName)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.CounterStructuredNameAndMetadata do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.CounterStructuredNameAndMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.CounterStructuredNameAndMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
