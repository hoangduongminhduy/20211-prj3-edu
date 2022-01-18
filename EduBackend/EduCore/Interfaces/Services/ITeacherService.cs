using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EduCore.Entities;
using EduCore.Models;

namespace EduCore.Interfaces.Services
{
	public interface ITeacherService : IBaseService<Teacher>
	{
		public ServiceResult GetPaginationTeacher(int? pageNumber, int? pageSize);
	}
}
