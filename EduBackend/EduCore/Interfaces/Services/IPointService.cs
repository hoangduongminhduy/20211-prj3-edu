using EduCore.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace EduCore.Interfaces.Services
{
	public interface IPointService : IBaseService<Point>
	{
		public ServiceResult GetCustomPointByFilter(string studentID, string semester);
        public ServiceResult GetPointClass(string studentID);
    }
}
