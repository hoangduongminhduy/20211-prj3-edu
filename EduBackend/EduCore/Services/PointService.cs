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
	public class PointService : BaseService<Point>, IPointService
	{
		#region props and constructor
		IPointRepository pointRepository;
		public PointService(IPointRepository mPointRepository) : base(mPointRepository)
		{
			pointRepository = mPointRepository;
		}
		#endregion

		public ServiceResult GetCustomPointByFilter(string studentID, string semester)
		{
			result.setField(true, "", pointRepository.GetCustomPointByFilter(studentID, semester));
			return result;
		}

		public ServiceResult GetPointClass(string studentID)
		{
			result.setField(true, "", pointRepository.GetPointClass(studentID));
			return result;
		}
	}
}
