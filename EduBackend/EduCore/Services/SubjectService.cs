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
    public class SubjectService: BaseService<Subject>, ISubjectService
	{
		#region props and constructor
		ISubjectRepository SubjectRepository;
		public SubjectService(ISubjectRepository mSubjectRepository) : base(mSubjectRepository)
		{
			SubjectRepository = mSubjectRepository;
		}
		#endregion
	}
}
