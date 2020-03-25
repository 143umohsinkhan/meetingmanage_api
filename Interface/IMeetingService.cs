using API.Models;

namespace API.Interface
{
    public interface IMeetingService : IRepository<Meetings>
    {
        bool Update(Meetings obj);
        Meetings GetByID(int Id);
    }
}
