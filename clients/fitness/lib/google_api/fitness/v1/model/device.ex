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

defmodule GoogleApi.Fitness.V1.Model.Device do
  @moduledoc """
  Representation of an integrated device (such as a phone or a wearable) that can hold sensors. Each sensor is exposed as a data source.

  The main purpose of the device information contained in this class is to identify the hardware of a particular data source. This can be useful in different ways, including:  
  - Distinguishing two similar sensors on different devices (the step counter on two nexus 5 phones, for instance)
  - Display the source of data to the user (by using the device make / model)
  - Treat data differently depending on sensor type (accelerometers on a watch may give different patterns than those on a phone)
  - Build different analysis models for each device/version.

  ## Attributes

  *   `manufacturer` (*type:* `String.t`, *default:* `nil`) - Manufacturer of the product/hardware.
  *   `model` (*type:* `String.t`, *default:* `nil`) - End-user visible model name for the device.
  *   `type` (*type:* `String.t`, *default:* `nil`) - A constant representing the type of the device.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - The serial number or other unique ID for the hardware. This field is obfuscated when read by any REST or Android client that did not create the data source. Only the data source creator will see the uid field in clear and normal form.
  *   `version` (*type:* `String.t`, *default:* `nil`) - Version string for the device hardware/software.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :manufacturer => String.t(),
          :model => String.t(),
          :type => String.t(),
          :uid => String.t(),
          :version => String.t()
        }

  field(:manufacturer)
  field(:model)
  field(:type)
  field(:uid)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.Fitness.V1.Model.Device do
  def decode(value, options) do
    GoogleApi.Fitness.V1.Model.Device.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Fitness.V1.Model.Device do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
