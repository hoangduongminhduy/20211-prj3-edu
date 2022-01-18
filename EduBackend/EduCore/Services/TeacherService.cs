using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Text.RegularExpressions;
using EduCore.Interfaces.Services;
using EduCore.Interfaces.Repositories;
using EduCore.Entities;

namespace EduCore.Services
{
	public class TeacherService : BaseService<Teacher>, ITeacherService
	{
		#region props and constructor
		ITeacherRepository teacherRepository;
		public TeacherService(ITeacherRepository mTeacherRepository) : base(mTeacherRepository)
		{
			teacherRepository = mTeacherRepository;
		}
		#endregion

		public ServiceResult GetPaginationTeacher(int? pageNumber, int? pageSize)
        {
			result.setField(true, "", teacherRepository.GetPaginationTeacher(pageNumber, pageSize));
			return result;
		}
	}
}
