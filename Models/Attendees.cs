using System;
using System.Collections.Generic;

namespace API.Models
{
    public partial class Attendees
    {
        public Attendees()
        {
            AttendeeMeeting = new HashSet<AttendeeMeeting>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public DateTime CreateDate { get; set; }

        public virtual ICollection<AttendeeMeeting> AttendeeMeeting { get; set; }
    }
}
