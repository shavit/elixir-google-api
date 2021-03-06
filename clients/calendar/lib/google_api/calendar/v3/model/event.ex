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

defmodule GoogleApi.Calendar.V3.Model.Event do
  @moduledoc """


  ## Attributes

  *   `iCalUID` (*type:* `String.t`, *default:* `nil`) - Event unique identifier as defined in RFC5545. It is used to uniquely identify events accross calendaring systems and must be supplied when importing events via the import method.
      Note that the icalUID and the id are not identical and only one of them should be supplied at event creation time. One difference in their semantics is that in recurring events, all occurrences of one event have different ids while they all share the same icalUIDs.
  *   `source` (*type:* `GoogleApi.Calendar.V3.Model.EventSource.t`, *default:* `nil`) - Source from which the event was created. For example, a web page, an email message or any document identifiable by an URL with HTTP or HTTPS scheme. Can only be seen or modified by the creator of the event.
  *   `htmlLink` (*type:* `String.t`, *default:* `nil`) - An absolute link to this event in the Google Calendar Web UI. Read-only.
  *   `created` (*type:* `DateTime.t`, *default:* `nil`) - Creation time of the event (as a RFC3339 timestamp). Read-only.
  *   `locked` (*type:* `boolean()`, *default:* `false`) - Whether this is a locked event copy where no changes can be made to the main event fields "summary", "description", "location", "start", "end" or "recurrence". The default is False. Read-Only.
  *   `originalStartTime` (*type:* `GoogleApi.Calendar.V3.Model.EventDateTime.t`, *default:* `nil`) - For an instance of a recurring event, this is the time at which this event would start according to the recurrence data in the recurring event identified by recurringEventId. It uniquely identifies the instance within the recurring event series even if the instance was moved to a different time. Immutable.
  *   `updated` (*type:* `DateTime.t`, *default:* `nil`) - Last modification time of the event (as a RFC3339 timestamp). Read-only.
  *   `end` (*type:* `GoogleApi.Calendar.V3.Model.EventDateTime.t`, *default:* `nil`) - The (exclusive) end time of the event. For a recurring event, this is the end time of the first instance.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Opaque identifier of the event. When creating new single or recurring events, you can specify their IDs. Provided IDs must follow these rules:  
      - characters allowed in the ID are those used in base32hex encoding, i.e. lowercase letters a-v and digits 0-9, see section 3.1.2 in RFC2938 
      - the length of the ID must be between 5 and 1024 characters 
      - the ID must be unique per calendar  Due to the globally distributed nature of the system, we cannot guarantee that ID collisions will be detected at event creation time. To minimize the risk of collisions we recommend using an established UUID algorithm such as one described in RFC4122.
      If you do not specify an ID, it will be automatically generated by the server.
      Note that the icalUID and the id are not identical and only one of them should be supplied at event creation time. One difference in their semantics is that in recurring events, all occurrences of one event have different ids while they all share the same icalUIDs.
  *   `endTimeUnspecified` (*type:* `boolean()`, *default:* `false`) - Whether the end time is actually unspecified. An end time is still provided for compatibility reasons, even if this attribute is set to True. The default is False.
  *   `recurringEventId` (*type:* `String.t`, *default:* `nil`) - For an instance of a recurring event, this is the id of the recurring event to which this instance belongs. Immutable.
  *   `transparency` (*type:* `String.t`, *default:* `opaque`) - Whether the event blocks time on the calendar. Optional. Possible values are:  
      - "opaque" - Default value. The event does block time on the calendar. This is equivalent to setting Show me as to Busy in the Calendar UI. 
      - "transparent" - The event does not block time on the calendar. This is equivalent to setting Show me as to Available in the Calendar UI.
  *   `recurrence` (*type:* `list(String.t)`, *default:* `nil`) - List of RRULE, EXRULE, RDATE and EXDATE lines for a recurring event, as specified in RFC5545. Note that DTSTART and DTEND lines are not allowed in this field; event start and end times are specified in the start and end fields. This field is omitted for single events or instances of recurring events.
  *   `sequence` (*type:* `integer()`, *default:* `nil`) - Sequence number as per iCalendar.
  *   `extendedProperties` (*type:* `GoogleApi.Calendar.V3.Model.EventExtendedProperties.t`, *default:* `nil`) - Extended properties of the event.
  *   `guestsCanInviteOthers` (*type:* `boolean()`, *default:* `true`) - Whether attendees other than the organizer can invite others to the event. Optional. The default is True.
  *   `colorId` (*type:* `String.t`, *default:* `nil`) - The color of the event. This is an ID referring to an entry in the event section of the colors definition (see the  colors endpoint). Optional.
  *   `gadget` (*type:* `GoogleApi.Calendar.V3.Model.EventGadget.t`, *default:* `nil`) - A gadget that extends this event.
  *   `visibility` (*type:* `String.t`, *default:* `default`) - Visibility of the event. Optional. Possible values are:  
      - "default" - Uses the default visibility for events on the calendar. This is the default value. 
      - "public" - The event is public and event details are visible to all readers of the calendar. 
      - "private" - The event is private and only event attendees may view event details. 
      - "confidential" - The event is private. This value is provided for compatibility reasons.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Status of the event. Optional. Possible values are:  
      - "confirmed" - The event is confirmed. This is the default status. 
      - "tentative" - The event is tentatively confirmed. 
      - "cancelled" - The event is cancelled (deleted). The list method returns cancelled events only on incremental sync (when syncToken or updatedMin are specified) or if the showDeleted flag is set to true. The get method always returns them.
      A cancelled status represents two different states depending on the event type:  
      - Cancelled exceptions of an uncancelled recurring event indicate that this instance should no longer be presented to the user. Clients should store these events for the lifetime of the parent recurring event.
      Cancelled exceptions are only guaranteed to have values for the id, recurringEventId and originalStartTime fields populated. The other fields might be empty.  
      - All other cancelled events represent deleted events. Clients should remove their locally synced copies. Such cancelled events will eventually disappear, so do not rely on them being available indefinitely.
      Deleted events are only guaranteed to have the id field populated.   On the organizer's calendar, cancelled events continue to expose event details (summary, location, etc.) so that they can be restored (undeleted). Similarly, the events to which the user was invited and that they manually removed continue to provide details. However, incremental sync requests with showDeleted set to false will not return these details.
      If an event changes its organizer (for example via the move operation) and the original organizer is not on the attendee list, it will leave behind a cancelled event where only the id field is guaranteed to be populated.
  *   `location` (*type:* `String.t`, *default:* `nil`) - Geographic location of the event as free-form text. Optional.
  *   `organizer` (*type:* `GoogleApi.Calendar.V3.Model.EventOrganizer.t`, *default:* `nil`) - The organizer of the event. If the organizer is also an attendee, this is indicated with a separate entry in attendees with the organizer field set to True. To change the organizer, use the move operation. Read-only, except when importing an event.
  *   `anyoneCanAddSelf` (*type:* `boolean()`, *default:* `false`) - Whether anyone can invite themselves to the event (currently works for Google+ events only). Optional. The default is False.
  *   `creator` (*type:* `GoogleApi.Calendar.V3.Model.EventCreator.t`, *default:* `nil`) - The creator of the event. Read-only.
  *   `start` (*type:* `GoogleApi.Calendar.V3.Model.EventDateTime.t`, *default:* `nil`) - The (inclusive) start time of the event. For a recurring event, this is the start time of the first instance.
  *   `attendees` (*type:* `list(GoogleApi.Calendar.V3.Model.EventAttendee.t)`, *default:* `nil`) - The attendees of the event. See the Events with attendees guide for more information on scheduling events with other calendar users.
  *   `guestsCanModify` (*type:* `boolean()`, *default:* `false`) - Whether attendees other than the organizer can modify the event. Optional. The default is False.
  *   `kind` (*type:* `String.t`, *default:* `calendar#event`) - Type of the resource ("calendar#event").
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the event. Optional.
  *   `attachments` (*type:* `list(GoogleApi.Calendar.V3.Model.EventAttachment.t)`, *default:* `nil`) - File attachments for the event. Currently only Google Drive attachments are supported.
      In order to modify attachments the supportsAttachments request parameter should be set to true.
      There can be at most 25 attachments per event,
  *   `hangoutLink` (*type:* `String.t`, *default:* `nil`) - An absolute link to the Google+ hangout associated with this event. Read-only.
  *   `conferenceData` (*type:* `GoogleApi.Calendar.V3.Model.ConferenceData.t`, *default:* `nil`) - The conference-related information, such as details of a Hangouts Meet conference. To create new conference details use the createRequest field. To persist your changes, remember to set the conferenceDataVersion request parameter to 1 for all event modification requests.
  *   `privateCopy` (*type:* `boolean()`, *default:* `false`) - If set to True, Event propagation is disabled. Note that it is not the same thing as Private event properties. Optional. Immutable. The default is False.
  *   `summary` (*type:* `String.t`, *default:* `nil`) - Title of the event.
  *   `guestsCanSeeOtherGuests` (*type:* `boolean()`, *default:* `true`) - Whether attendees other than the organizer can see who the event's attendees are. Optional. The default is True.
  *   `reminders` (*type:* `GoogleApi.Calendar.V3.Model.EventReminders.t`, *default:* `nil`) - Information about the event's reminders for the authenticated user.
  *   `attendeesOmitted` (*type:* `boolean()`, *default:* `false`) - Whether attendees may have been omitted from the event's representation. When retrieving an event, this may be due to a restriction specified by the maxAttendee query parameter. When updating an event, this can be used to only update the participant's response. Optional. The default is False.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :iCalUID => String.t(),
          :source => GoogleApi.Calendar.V3.Model.EventSource.t(),
          :htmlLink => String.t(),
          :created => DateTime.t(),
          :locked => boolean(),
          :originalStartTime => GoogleApi.Calendar.V3.Model.EventDateTime.t(),
          :updated => DateTime.t(),
          :end => GoogleApi.Calendar.V3.Model.EventDateTime.t(),
          :id => String.t(),
          :endTimeUnspecified => boolean(),
          :recurringEventId => String.t(),
          :transparency => String.t(),
          :recurrence => list(String.t()),
          :sequence => integer(),
          :extendedProperties => GoogleApi.Calendar.V3.Model.EventExtendedProperties.t(),
          :guestsCanInviteOthers => boolean(),
          :colorId => String.t(),
          :gadget => GoogleApi.Calendar.V3.Model.EventGadget.t(),
          :visibility => String.t(),
          :status => String.t(),
          :location => String.t(),
          :organizer => GoogleApi.Calendar.V3.Model.EventOrganizer.t(),
          :anyoneCanAddSelf => boolean(),
          :creator => GoogleApi.Calendar.V3.Model.EventCreator.t(),
          :start => GoogleApi.Calendar.V3.Model.EventDateTime.t(),
          :attendees => list(GoogleApi.Calendar.V3.Model.EventAttendee.t()),
          :guestsCanModify => boolean(),
          :kind => String.t(),
          :description => String.t(),
          :attachments => list(GoogleApi.Calendar.V3.Model.EventAttachment.t()),
          :hangoutLink => String.t(),
          :conferenceData => GoogleApi.Calendar.V3.Model.ConferenceData.t(),
          :privateCopy => boolean(),
          :summary => String.t(),
          :guestsCanSeeOtherGuests => boolean(),
          :reminders => GoogleApi.Calendar.V3.Model.EventReminders.t(),
          :attendeesOmitted => boolean(),
          :etag => String.t()
        }

  field(:iCalUID)
  field(:source, as: GoogleApi.Calendar.V3.Model.EventSource)
  field(:htmlLink)
  field(:created, as: DateTime)
  field(:locked)
  field(:originalStartTime, as: GoogleApi.Calendar.V3.Model.EventDateTime)
  field(:updated, as: DateTime)
  field(:end, as: GoogleApi.Calendar.V3.Model.EventDateTime)
  field(:id)
  field(:endTimeUnspecified)
  field(:recurringEventId)
  field(:transparency)
  field(:recurrence, type: :list)
  field(:sequence)
  field(:extendedProperties, as: GoogleApi.Calendar.V3.Model.EventExtendedProperties)
  field(:guestsCanInviteOthers)
  field(:colorId)
  field(:gadget, as: GoogleApi.Calendar.V3.Model.EventGadget)
  field(:visibility)
  field(:status)
  field(:location)
  field(:organizer, as: GoogleApi.Calendar.V3.Model.EventOrganizer)
  field(:anyoneCanAddSelf)
  field(:creator, as: GoogleApi.Calendar.V3.Model.EventCreator)
  field(:start, as: GoogleApi.Calendar.V3.Model.EventDateTime)
  field(:attendees, as: GoogleApi.Calendar.V3.Model.EventAttendee, type: :list)
  field(:guestsCanModify)
  field(:kind)
  field(:description)
  field(:attachments, as: GoogleApi.Calendar.V3.Model.EventAttachment, type: :list)
  field(:hangoutLink)
  field(:conferenceData, as: GoogleApi.Calendar.V3.Model.ConferenceData)
  field(:privateCopy)
  field(:summary)
  field(:guestsCanSeeOtherGuests)
  field(:reminders, as: GoogleApi.Calendar.V3.Model.EventReminders)
  field(:attendeesOmitted)
  field(:etag)
end

defimpl Poison.Decoder, for: GoogleApi.Calendar.V3.Model.Event do
  def decode(value, options) do
    GoogleApi.Calendar.V3.Model.Event.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Calendar.V3.Model.Event do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
