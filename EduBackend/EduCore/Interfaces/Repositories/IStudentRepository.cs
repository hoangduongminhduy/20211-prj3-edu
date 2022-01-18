using EduCore.Entities;
using EduCore.Interfaces.Services;
using EduCore.Models;
using System;
using System.Collections.Generic;

namespace EduCore.Interfaces.Repositories
{
	public interface IStudentRepository : IBaseRepository<Student>
	{
		#region Additional methods
		public List<Student> GetStudentByClassID(string classID);
		public PaginationModel<Student>GetPaginationStudent(int? pageNumber, int? pageSize);
		#endregion
	}
}
