using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EduCore.Entities;
using EduCore.Models;

namespace EduCore.Interfaces.Repositories
{
    public interface IClassRepository : IBaseRepository<Class>
    {
        public List<CustomClass> GetClassByTeacherID(string teacherID);
        public List<CustomClass> GetClassByStudentID(string studentID);
        public PaginationModel<dynamic> GetPaginationClass(int? pageNumber, int? pageSize);
    }
}
