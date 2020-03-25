using System;
using System.Collections.Generic;

namespace API.Models
{
    public partial class AttendeeMeeting
    {
        public int AttendeeId { get; set; }
        public int MeetingId { get; set; }
        public DateTime CreatedDate { get; set; }
        public int Id { get; set; }

        public virtual Attendees Attendee { get; set; }
        public virtual Meetings Meeting { get; set; }
    }
}
