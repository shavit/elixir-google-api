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

defmodule GoogleApi.Jobs.V2.Model.CreateJobRequest do
  @moduledoc """
  Input only.  Create job request.

  ## Attributes

  - disableStreetAddressResolution (boolean()): Deprecated. Please use processing_options. This flag is ignored if processing_options is set.  Optional.  If set to &#x60;true&#x60;, the service does not attempt to resolve a more precise address for the job. Defaults to: `null`.
  - job (Job): Required.  The Job to be created. Defaults to: `null`.
  - processingOptions (JobProcessingOptions): Optional.  Options for job processing. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :disableStreetAddressResolution => any(),
          :job => GoogleApi.Jobs.V2.Model.Job.t(),
          :processingOptions => GoogleApi.Jobs.V2.Model.JobProcessingOptions.t()
        }

  field(:disableStreetAddressResolution)
  field(:job, as: GoogleApi.Jobs.V2.Model.Job)
  field(:processingOptions, as: GoogleApi.Jobs.V2.Model.JobProcessingOptions)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V2.Model.CreateJobRequest do
  def decode(value, options) do
    GoogleApi.Jobs.V2.Model.CreateJobRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V2.Model.CreateJobRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end