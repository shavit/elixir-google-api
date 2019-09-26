#!/usr/bin/env bash
# Copyright 2018 Google Inc.
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

set -eo pipefail

pushd $(dirname "$0")/../

export TEMPLATE=gax

git clean -fdx clients

function ensure_file_permissions {
    echo "fixing file permissions"
    if [[ ! -z "${USER_GROUP}" ]]; then
        chown -R ${USER_GROUP} clients
    fi
}
trap ensure_file_permissions EXIT

# install npm dependencies
npm install

# install dependencies
mix deps.get

# run generators
mix google_apis.generate $1

# if there are changes, bump the version(s)
OUTPUT=$(git status --porcelain)
if [[ ! -z $OUTPUT ]]; then
    mix google_apis.bump_version $1
fi