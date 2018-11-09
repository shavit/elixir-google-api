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

defmodule GoogleApi.WebSecurityScanner.V1alpha.Model.Finding do
  @moduledoc """
  A Finding resource represents a vulnerability instance identified during a ScanRun.

  ## Attributes

  - body (String.t): Output only. The body of the request that triggered the vulnerability. Defaults to: `null`.
  - description (String.t): Output only. The description of the vulnerability. Defaults to: `null`.
  - finalUrl (String.t): Output only. The URL where the browser lands when the vulnerability is detected. Defaults to: `null`.
  - findingType (String.t): Output only. The type of the Finding. Defaults to: `null`.
    - Enum - one of [FINDING_TYPE_UNSPECIFIED, MIXED_CONTENT, OUTDATED_LIBRARY, ROSETTA_FLASH, XSS_CALLBACK, XSS_ERROR, CLEAR_TEXT_PASSWORD, INVALID_CONTENT_TYPE, XSS_ANGULAR_CALLBACK, INVALID_HEADER, MISSPELLED_SECURITY_HEADER_NAME, MISMATCHING_SECURITY_HEADER_VALUES]
  - frameUrl (String.t): Output only. If the vulnerability was originated from nested IFrame, the immediate parent IFrame is reported. Defaults to: `null`.
  - fuzzedUrl (String.t): Output only. The URL produced by the server-side fuzzer and used in the request that triggered the vulnerability. Defaults to: `null`.
  - httpMethod (String.t): Output only. The http method of the request that triggered the vulnerability, in uppercase. Defaults to: `null`.
  - name (String.t): Output only. The resource name of the Finding. The name follows the format of &#39;projects/{projectId}/scanConfigs/{scanConfigId}/scanruns/{scanRunId}/findings/{findingId}&#39;. The finding IDs are generated by the system. Defaults to: `null`.
  - outdatedLibrary (OutdatedLibrary): Output only. An addon containing information about outdated libraries. Defaults to: `null`.
  - reproductionUrl (String.t): Output only. The URL containing human-readable payload that user can leverage to reproduce the vulnerability. Defaults to: `null`.
  - trackingId (String.t): Output only. The tracking ID uniquely identifies a vulnerability instance across multiple ScanRuns. Defaults to: `null`.
  - violatingResource (ViolatingResource): Output only. An addon containing detailed information regarding any resource causing the vulnerability such as JavaScript sources, image, audio files, etc. Defaults to: `null`.
  - vulnerableHeaders (VulnerableHeaders): Output only. An addon containing information about vulnerable or missing HTTP headers. Defaults to: `null`.
  - vulnerableParameters (VulnerableParameters): Output only. An addon containing information about request parameters which were found to be vulnerable. Defaults to: `null`.
  - xss (Xss): Output only. An addon containing information reported for an XSS, if any. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :body => any(),
          :description => any(),
          :finalUrl => any(),
          :findingType => any(),
          :frameUrl => any(),
          :fuzzedUrl => any(),
          :httpMethod => any(),
          :name => any(),
          :outdatedLibrary => GoogleApi.WebSecurityScanner.V1alpha.Model.OutdatedLibrary.t(),
          :reproductionUrl => any(),
          :trackingId => any(),
          :violatingResource => GoogleApi.WebSecurityScanner.V1alpha.Model.ViolatingResource.t(),
          :vulnerableHeaders => GoogleApi.WebSecurityScanner.V1alpha.Model.VulnerableHeaders.t(),
          :vulnerableParameters =>
            GoogleApi.WebSecurityScanner.V1alpha.Model.VulnerableParameters.t(),
          :xss => GoogleApi.WebSecurityScanner.V1alpha.Model.Xss.t()
        }

  field(:body)
  field(:description)
  field(:finalUrl)
  field(:findingType)
  field(:frameUrl)
  field(:fuzzedUrl)
  field(:httpMethod)
  field(:name)
  field(:outdatedLibrary, as: GoogleApi.WebSecurityScanner.V1alpha.Model.OutdatedLibrary)
  field(:reproductionUrl)
  field(:trackingId)
  field(:violatingResource, as: GoogleApi.WebSecurityScanner.V1alpha.Model.ViolatingResource)
  field(:vulnerableHeaders, as: GoogleApi.WebSecurityScanner.V1alpha.Model.VulnerableHeaders)

  field(
    :vulnerableParameters,
    as: GoogleApi.WebSecurityScanner.V1alpha.Model.VulnerableParameters
  )

  field(:xss, as: GoogleApi.WebSecurityScanner.V1alpha.Model.Xss)
end

defimpl Poison.Decoder, for: GoogleApi.WebSecurityScanner.V1alpha.Model.Finding do
  def decode(value, options) do
    GoogleApi.WebSecurityScanner.V1alpha.Model.Finding.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WebSecurityScanner.V1alpha.Model.Finding do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end