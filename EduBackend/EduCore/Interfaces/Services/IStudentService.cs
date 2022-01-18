using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EduCore.Entities;
namespace EduCore.Interfaces.Services
{
	public interface IStudentService : IBaseService<Student>
	{
		public ServiceResult GetPaginationStudent(int? pageNumber, int? pageSize);
	}
}
