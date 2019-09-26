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

defmodule GoogleApi.BigQuery.V2.Model.JobCancelResponse do
  @moduledoc """


  ## Attributes

  *   `job` (*type:* `GoogleApi.BigQuery.V2.Model.Job.t`, *default:* `nil`) - The final state of the job.
  *   `kind` (*type:* `String.t`, *default:* `bigquery#jobCancelResponse`) - The resource type of the response.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :job => GoogleApi.BigQuery.V2.Model.Job.t(),
          :kind => String.t()
        }

  field(:job, as: GoogleApi.BigQuery.V2.Model.Job)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.JobCancelResponse do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.JobCancelResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.JobCancelResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
