using EduCore.Entities;
using EduCore.Interfaces.Services;
using EduCore.Models;
using System;
using System.Collections.Generic;

namespace EduCore.Interfaces.Repositories
{
	public interface ITeacherRepository : IBaseRepository<Teacher>
	{
		public Teacher GetTeacherDetail(string teacherID);
		public PaginationModel<Teacher> GetPaginationTeacher(int? pageNumber, int? pageSize);
	}
}
