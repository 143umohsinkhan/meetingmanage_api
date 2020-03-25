using API.Dto;
using API.Interface;
using API.Models;
using System;
using System.Linq;

namespace API.DataAccess
{
    public class UserService : RepositoryService<Users>, IUserService
    {
        public UserService(modelContext modelContext) : base(modelContext)
        {
        }

        public LoggedInUser AuthenticateUser(LoggedInUser loggedInUser)
        {
            {
                LoggedInUser user;
                try
                {
                    var userDetails = RepoContext.Users.FirstOrDefault(
                        u => u.UserName == loggedInUser.UserName && u.Password == loggedInUser.Password
                        );


                    if (userDetails != null)
                    {

                        user = new LoggedInUser
                        {
                            UserName = userDetails.UserName,
                            UserID = userDetails.Id,
                        };
                        return user;
                    }
                    else
                    {
                        return null;
                    }
                }
                catch (Exception ex)
                {
                    return null;
                }
            }
        }
    }
}
