using EduCore.Entities;
using EduCore.Interfaces.Services;
using System;
using System.Collections.Generic;

namespace EduCore.Interfaces.Repositories
{
	public interface IPointRepository : IBaseRepository<Point>
	{
		public List<CustomPoint> GetCustomPointByFilter(string studentID, string semester);
        public List<CustomPoint> GetPointClass(string studentID);
    }
}
