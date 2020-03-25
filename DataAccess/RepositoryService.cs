using API.Interface;
using API.Models;
using System.Collections.Generic;
using System.Linq;

namespace API.DataAccess
{
    public class RepositoryService<T> : IRepository<T> where T : class
    {
        protected modelContext RepoContext
        {
            get
            {
                return _modelContext;
            }
        }

        private modelContext _modelContext;
        public RepositoryService(modelContext modelContext)
        {
            _modelContext = modelContext;
        }

        public virtual bool Add(T obj)
        {
            _modelContext.Add(obj);
            _modelContext.SaveChanges();
            return true;
        }

        public virtual IList<T> GetAll()
        {
            return _modelContext.Set<T>().ToList();
        }
    }
}
