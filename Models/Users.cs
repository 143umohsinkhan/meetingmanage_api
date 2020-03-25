using System;
using System.Collections.Generic;

namespace API.Models
{
    public partial class Users
    {
        public Users()
        {
            Meetings = new HashSet<Meetings>();
        }

        public int Id { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public DateTime CreateDate { get; set; }

        public virtual ICollection<Meetings> Meetings { get; set; }
    }
}
