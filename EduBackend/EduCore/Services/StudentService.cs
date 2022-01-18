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
	public class StudentService : BaseService<Student>, IStudentService
	{
		#region props and constructor
		IStudentRepository studentRepository;
		public StudentService(IStudentRepository mStudentRepository) : base(mStudentRepository)
		{
			studentRepository = mStudentRepository;
		}
		#endregion

		public ServiceResult GetPaginationStudent(int? pageNumber, int? pageSize)
		{
			result.setField(true, "", studentRepository.GetPaginationStudent(pageNumber, pageSize));
			return result;
		}
	}
}
