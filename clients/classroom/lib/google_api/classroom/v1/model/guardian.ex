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

defmodule GoogleApi.Classroom.V1.Model.Guardian do
  @moduledoc """
  Association between a student and a guardian of that student. The guardian
  may receive information about the student's course work.

  ## Attributes

  *   `guardianId` (*type:* `String.t`, *default:* `nil`) - Identifier for the guardian.
  *   `guardianProfile` (*type:* `GoogleApi.Classroom.V1.Model.UserProfile.t`, *default:* `nil`) - User profile for the guardian.
  *   `invitedEmailAddress` (*type:* `String.t`, *default:* `nil`) - The email address to which the initial guardian invitation was sent.
      This field is only visible to domain administrators.
  *   `studentId` (*type:* `String.t`, *default:* `nil`) - Identifier for the student to whom the guardian relationship applies.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :guardianId => String.t(),
          :guardianProfile => GoogleApi.Classroom.V1.Model.UserProfile.t(),
          :invitedEmailAddress => String.t(),
          :studentId => String.t()
        }

  field(:guardianId)
  field(:guardianProfile, as: GoogleApi.Classroom.V1.Model.UserProfile)
  field(:invitedEmailAddress)
  field(:studentId)
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.Guardian do
  def decode(value, options) do
    GoogleApi.Classroom.V1.Model.Guardian.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Classroom.V1.Model.Guardian do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
