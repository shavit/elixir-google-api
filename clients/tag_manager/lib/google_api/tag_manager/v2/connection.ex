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

defmodule GoogleApi.TagManager.V2.Connection do
  @moduledoc """
  Handle Tesla connections for GoogleApi.TagManager.V2.
  """

  @type t :: Tesla.Env.client()

  use GoogleApi.Gax.Connection,
    scopes: [
      # Delete your Google Tag Manager containers
      "https://www.googleapis.com/auth/tagmanager.delete.containers",

      # Manage your Google Tag Manager container and its subcomponents, excluding versioning and publishing
      "https://www.googleapis.com/auth/tagmanager.edit.containers",

      # Manage your Google Tag Manager container versions
      "https://www.googleapis.com/auth/tagmanager.edit.containerversions",

      # View and manage your Google Tag Manager accounts
      "https://www.googleapis.com/auth/tagmanager.manage.accounts",

      # Manage user permissions of your Google Tag Manager account and container
      "https://www.googleapis.com/auth/tagmanager.manage.users",

      # Publish your Google Tag Manager container versions
      "https://www.googleapis.com/auth/tagmanager.publish",

      # View your Google Tag Manager container and its subcomponents
      "https://www.googleapis.com/auth/tagmanager.readonly"
    ],
    otp_app: :google_api_tag_manager,
    base_url: "https://www.googleapis.com/tagmanager/v2/"
end
