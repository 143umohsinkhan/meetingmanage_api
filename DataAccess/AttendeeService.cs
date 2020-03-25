using API.Interface;
using API.Models;

namespace API.DataAccess
{
    public class AttendeeService : RepositoryService<Attendees>, IAttendeeService
    {
        public AttendeeService(modelContext modelContext) : base(modelContext)
        {
        }
    }
}
