using EduCore.Entities;
using EduCore.Interfaces.Repositories;
using EduCore.Interfaces.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduCore.Services
{
    public class StudentClassService : BaseService<StudentClass>, IStudentClassService
    {
		#region props and constructor
		IStudentClassRepository StudentClassRepository;
		public StudentClassService(IStudentClassRepository mStudentClassRepository) : base(mStudentClassRepository)
		{
			StudentClassRepository = mStudentClassRepository;
		}
		#endregion
	}
}
