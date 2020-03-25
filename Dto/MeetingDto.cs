using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace API.Models
{
    public class MeetingDto
    {
        public string Subject { get; set; }
        public string Agenda { get; set; }
        public DateTime MeetingTime { get; set; }
        public List<int> Attendees { get; set; }
        public int UserID { get; set; }
    }

    partial class Meetings
    {
        [NotMapped]
        public List<int> AttendeesIds { get; set; }
        [NotMapped]
        public string AttedeesNames { get; set; }
    }
}
