using API.Dto;
using API.Models;

namespace API.Interface
{
    public interface IUserService  : IRepository<Users>
    {
        LoggedInUser AuthenticateUser(LoggedInUser loggedInUser);
    }
}
