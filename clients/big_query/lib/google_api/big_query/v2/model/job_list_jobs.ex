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

defmodule GoogleApi.BigQuery.V2.Model.JobListJobs do
  @moduledoc """


  ## Attributes

  *   `configuration` (*type:* `GoogleApi.BigQuery.V2.Model.JobConfiguration.t`, *default:* `nil`) - [Full-projection-only] Specifies the job configuration.
  *   `errorResult` (*type:* `GoogleApi.BigQuery.V2.Model.ErrorProto.t`, *default:* `nil`) - A result object that will be present only if the job has failed.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Unique opaque ID of the job.
  *   `jobReference` (*type:* `GoogleApi.BigQuery.V2.Model.JobReference.t`, *default:* `nil`) - Job reference uniquely identifying the job.
  *   `kind` (*type:* `String.t`, *default:* `bigquery#job`) - The resource type.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Running state of the job. When the state is DONE, errorResult can be checked to determine whether the job succeeded or failed.
  *   `statistics` (*type:* `GoogleApi.BigQuery.V2.Model.JobStatistics.t`, *default:* `nil`) - [Output-only] Information about the job, including starting time and ending time of the job.
  *   `status` (*type:* `GoogleApi.BigQuery.V2.Model.JobStatus.t`, *default:* `nil`) - [Full-projection-only] Describes the state of the job.
  *   `user_email` (*type:* `String.t`, *default:* `nil`) - [Full-projection-only] Email address of the user who ran the job.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :configuration => GoogleApi.BigQuery.V2.Model.JobConfiguration.t(),
          :errorResult => GoogleApi.BigQuery.V2.Model.ErrorProto.t(),
          :id => String.t(),
          :jobReference => GoogleApi.BigQuery.V2.Model.JobReference.t(),
          :kind => String.t(),
          :state => String.t(),
          :statistics => GoogleApi.BigQuery.V2.Model.JobStatistics.t(),
          :status => GoogleApi.BigQuery.V2.Model.JobStatus.t(),
          :user_email => String.t()
        }

  field(:configuration, as: GoogleApi.BigQuery.V2.Model.JobConfiguration)
  field(:errorResult, as: GoogleApi.BigQuery.V2.Model.ErrorProto)
  field(:id)
  field(:jobReference, as: GoogleApi.BigQuery.V2.Model.JobReference)
  field(:kind)
  field(:state)
  field(:statistics, as: GoogleApi.BigQuery.V2.Model.JobStatistics)
  field(:status, as: GoogleApi.BigQuery.V2.Model.JobStatus)
  field(:user_email)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.JobListJobs do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.JobListJobs.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.JobListJobs do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
