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

defmodule GoogleApi.ToolResults.V1beta3.Model.Any do
  @moduledoc """
  `Any` contains an arbitrary serialized protocol buffer message along with a URL that describes the type of the serialized message.

  Protobuf library provides support to pack/unpack Any values in the form of utility functions or additional generated methods of the Any type.

  Example 1: Pack and unpack a message in C++.

  Foo foo = ...; Any any; any.PackFrom(foo); ... if (any.UnpackTo(&foo)) { ... }

  Example 2: Pack and unpack a message in Java.

  Foo foo = ...; Any any = Any.pack(foo); ... if (any.is(Foo.class)) { foo = any.unpack(Foo.class); }

  Example 3: Pack and unpack a message in Python.

  foo = Foo(...) any = Any() any.Pack(foo) ... if any.Is(Foo.DESCRIPTOR): any.Unpack(foo) ...

  Example 4: Pack and unpack a message in Go

  foo := &pb.Foo{...} any, err := ptypes.MarshalAny(foo) ... foo := &pb.Foo{} if err := ptypes.UnmarshalAny(any, foo); err != nil { ... }

  The pack methods provided by protobuf library will by default use 'type.googleapis.com/full.type.name' as the type URL and the unpack methods only use the fully qualified type name after the last '/' in the type URL, for example "foo.bar.com/x/y.z" will yield type name "y.z".



  JSON ==== The JSON representation of an `Any` value uses the regular representation of the deserialized, embedded message, with an additional field `@type` which contains the type URL. Example:

  package google.profile; message Person { string first_name = 1; string last_name = 2; }

  { "@type": "type.googleapis.com/google.profile.Person", "firstName": , "lastName":  }

  If the embedded message type is well-known and has a custom JSON representation, that representation will be embedded adding a field `value` which holds the custom JSON in addition to the `@type` field. Example (for message [google.protobuf.Duration][]):

  { "@type": "type.googleapis.com/google.protobuf.Duration", "value": "1.212s" }

  ## Attributes

  *   `typeUrl` (*type:* `String.t`, *default:* `nil`) - A URL/resource name that uniquely identifies the type of the serialized protocol buffer message. This string must contain at least one "/" character. The last segment of the URL's path must represent the fully qualified name of the type (as in `path/google.protobuf.Duration`). The name should be in a canonical form (e.g., leading "." is not accepted).

      In practice, teams usually precompile into the binary all types that they expect it to use in the context of Any. However, for URLs which use the scheme `http`, `https`, or no scheme, one can optionally set up a type server that maps type URLs to message definitions as follows:

      * If no scheme is provided, `https` is assumed. * An HTTP GET on the URL must yield a [google.protobuf.Type][] value in binary format, or produce an error. * Applications are allowed to cache lookup results based on the URL, or have them precompiled into a binary to avoid any lookup. Therefore, binary compatibility needs to be preserved on changes to types. (Use versioned type names to manage breaking changes.)

      Note: this functionality is not currently available in the official protobuf release, and it is not used for type URLs beginning with type.googleapis.com.

      Schemes other than `http`, `https` (or the empty scheme) might be used with implementation specific semantics.
  *   `value` (*type:* `String.t`, *default:* `nil`) - Must be a valid serialized protocol buffer of the above specified type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :typeUrl => String.t(),
          :value => String.t()
        }

  field(:typeUrl)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.Any do
  def decode(value, options) do
    GoogleApi.ToolResults.V1beta3.Model.Any.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.Any do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
