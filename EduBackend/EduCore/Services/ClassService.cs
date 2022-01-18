using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EduCore.Interfaces.Services;
using EduCore.Interfaces.Repositories;
using EduCore.Entities;
namespace EduCore.Services
{
    public class ClassService : BaseService<Class>, IClassService
	{
		#region props and constructor
		IClassRepository classRepository;
		public ClassService(IClassRepository mClassRepository) : base(mClassRepository)
		{
			classRepository = mClassRepository;
		}
		#endregion

		public ServiceResult GetClassByTeacherID(string teahcherId)
		{
			result.setField(true, "", classRepository.GetClassByTeacherID(teahcherId));
			return result;
		}

		public ServiceResult GetClassByStudentID(string id)
		{
			result.setField(true, "", classRepository.GetClassByStudentID(id));
			return result;
		}
	}
}
