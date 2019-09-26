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

defmodule GoogleApi.CloudTasks.V2.Model.CreateTaskRequest do
  @moduledoc """
  Request message for CreateTask.

  ## Attributes

  *   `responseView` (*type:* `String.t`, *default:* `nil`) - The response_view specifies which subset of the Task will be
      returned.

      By default response_view is BASIC; not all
      information is retrieved by default because some data, such as
      payloads, might be desirable to return only when needed because
      of its large size or because of the sensitivity of data that it
      contains.

      Authorization for FULL requires
      `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/)
      permission on the Task resource.
  *   `task` (*type:* `GoogleApi.CloudTasks.V2.Model.Task.t`, *default:* `nil`) - Required. The task to add.

      Task names have the following format:
      `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID`.
      The user can optionally specify a task name. If a
      name is not specified then the system will generate a random
      unique task id, which will be set in the task returned in the
      response.

      If schedule_time is not set or is in the
      past then Cloud Tasks will set it to the current time.

      Task De-duplication:

      Explicitly specifying a task ID enables task de-duplication.  If
      a task's ID is identical to that of an existing task or a task
      that was deleted or executed recently then the call will fail
      with ALREADY_EXISTS.
      If the task's queue was created using Cloud Tasks, then another task with
      the same name can't be created for ~1hour after the original task was
      deleted or executed. If the task's queue was created using queue.yaml or
      queue.xml, then another task with the same name can't be created
      for ~9days after the original task was deleted or executed.

      Because there is an extra lookup cost to identify duplicate task
      names, these CreateTask calls have significantly
      increased latency. Using hashed strings for the task id or for
      the prefix of the task id is recommended. Choosing task ids that
      are sequential or have sequential prefixes, for example using a
      timestamp, causes an increase in latency and error rates in all
      task commands. The infrastructure relies on an approximately
      uniform distribution of task ids to store and serve tasks
      efficiently.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :responseView => String.t(),
          :task => GoogleApi.CloudTasks.V2.Model.Task.t()
        }

  field(:responseView)
  field(:task, as: GoogleApi.CloudTasks.V2.Model.Task)
end

defimpl Poison.Decoder, for: GoogleApi.CloudTasks.V2.Model.CreateTaskRequest do
  def decode(value, options) do
    GoogleApi.CloudTasks.V2.Model.CreateTaskRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudTasks.V2.Model.CreateTaskRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
