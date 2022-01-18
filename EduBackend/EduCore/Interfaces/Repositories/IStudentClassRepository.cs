using EduCore.Entities;
using EduCore.Interfaces.Services;
using EduCore.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduCore.Interfaces.Repositories
{
    public interface IStudentClassRepository : IBaseRepository<StudentClass>
    {
        public PaginationModel<dynamic> GetPaginationStudentClass(int? pageNumber, int? pageSize);
    }
}
