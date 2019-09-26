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

defmodule GoogleApi.Spanner.V1.Model.UpdateDatabaseDdlRequest do
  @moduledoc """
  Enqueues the given DDL statements to be applied, in order but not
  necessarily all at once, to the database schema at some point (or
  points) in the future. The server checks that the statements
  are executable (syntactically valid, name tables that exist, etc.)
  before enqueueing them, but they may still fail upon
  later execution (e.g., if a statement from another batch of
  statements is applied first and it conflicts in some way, or if
  there is some data-related problem like a `NULL` value in a column to
  which `NOT NULL` would be added). If a statement fails, all
  subsequent statements in the batch are automatically cancelled.

  Each batch of statements is assigned a name which can be used with
  the Operations API to monitor
  progress. See the
  operation_id field for more
  details.

  ## Attributes

  *   `operationId` (*type:* `String.t`, *default:* `nil`) - If empty, the new update request is assigned an
      automatically-generated operation ID. Otherwise, `operation_id`
      is used to construct the name of the resulting
      Operation.

      Specifying an explicit operation ID simplifies determining
      whether the statements were executed in the event that the
      UpdateDatabaseDdl call is replayed,
      or the return value is otherwise lost: the database and
      `operation_id` fields can be combined to form the
      name of the resulting
      longrunning.Operation: `<database>/operations/<operation_id>`.

      `operation_id` should be unique within the database, and must be
      a valid identifier: `a-z*`. Note that
      automatically-generated operation IDs always begin with an
      underscore. If the named operation already exists,
      UpdateDatabaseDdl returns
      `ALREADY_EXISTS`.
  *   `statements` (*type:* `list(String.t)`, *default:* `nil`) - DDL statements to be applied to the database.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :operationId => String.t(),
          :statements => list(String.t())
        }

  field(:operationId)
  field(:statements, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.UpdateDatabaseDdlRequest do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.UpdateDatabaseDdlRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.UpdateDatabaseDdlRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
