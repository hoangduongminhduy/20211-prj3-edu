using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EduCore.Entities;

namespace EduCore.Interfaces.Services
{
    public interface IClassService : IBaseService<Class>
    {
        public ServiceResult GetClassByTeacherID(string teahcherId);
        public ServiceResult GetClassByStudentID(string studentId);
    }
}
