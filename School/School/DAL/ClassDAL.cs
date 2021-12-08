using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace School.DAL
{
    public class ClassDAL
    {
        private EFDemoWithMVCDBEntities db = new EFDemoWithMVCDBEntities();

        public IEnumerable<Classe> GetAllClasses()
        {
            return DBNull.Classes;
        }
    }
}
