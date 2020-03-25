using System.Collections.Generic;

namespace API.Interface
{
    public interface IRepository<T> 
    {
        IList<T> GetAll();
        bool Add(T obj);
    }
}
