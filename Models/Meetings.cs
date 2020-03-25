using System;
using System.Collections.Generic;

namespace API.Models
{
    public partial class Meetings
    {
        public Meetings()
        {
            AttendeeMeeting = new HashSet<AttendeeMeeting>();
        }

        public int Id { get; set; }
        public string Subject { get; set; }
        public string Agenda { get; set; }
        public DateTime DateTime { get; set; }
        public DateTime CreateDate { get; set; }
        public int CreatedBy { get; set; }
        public DateTime UpdateDate { get; set; }
      

        public virtual Users CreatedByNavigation { get; set; }
        public virtual ICollection<AttendeeMeeting> AttendeeMeeting { get; set; }
    }
}
