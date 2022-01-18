using System;
using System.Linq;
using System.Collections.Generic;
using Microsoft.Extensions.Configuration;
using Dapper;

using EduCore.Interfaces.Repositories;
using EduCore.Entities;

namespace EduInfrastructure.Repositories
{
	public class PointRepository : BaseRepository<Point>, IPointRepository
	{
		public PointRepository(IConfiguration config) : base(config){ }

		public List<CustomPoint> GetCustomPointByFilter(string studentID, string semester)
		{
			string sqlCmd = $"SELECT p.*, s.subjectName, s.ratio, s.subjectID, c.semester, st.fullName " +
				$"FROM point p JOIN class c " +
				$"ON p.classID=c.classID " +
					$" JOIN subject s " +
				$"ON c.subjectID = s.subjectID " +
				$"JOIN student st " +
				$"ON st.studentID=@studentID " +
			$"WHERE p.studentID = @studentID";
			if(!String.IsNullOrEmpty(semester))
			{
				sqlCmd += " AND c.semester = @semester";
			}
			
			var dparams = new DynamicParameters();
			dparams.Add($"@studentID", studentID);
			dparams.Add($"@semester", semester);

			var result = conn.Query<CustomPoint>(sqlCmd, dparams).ToList();
			for(int i=0; i<result.Count; i++)
			{
				calLetterPoint(result[i]);
			}
			return result;
		}
		public List<CustomPoint> GetPointClass(string classId)
		{
			string sqlCmd = $"SELECT p.*, s.subjectName, s.ratio, st.fullName ,s.subjectID " +
				$"FROM class c JOIN point p " +
				$"ON p.classID=c.classID " +
				$"JOIN subject s " +
				$"ON s.subjectID = c.subjectID " +
				$"JOIN student st " +
				$"ON  st.studentID=p.studentID " +
				$"WHERE c.classId = @classId";
			var dparams = new DynamicParameters();
			dparams.Add($"@classId", classId);
			return conn.Query<CustomPoint>(sqlCmd, dparams).ToList();
		}



		public void calLetterPoint(CustomPoint customPoint)
		{
			float averagePoint = customPoint.midterm * customPoint.ratio / 10 + customPoint.final * (10 - customPoint.ratio) / 10;
			Console.WriteLine(customPoint.midterm + " " + customPoint.final + " " + averagePoint);
			if (customPoint.midterm < 3 || customPoint.final < 3)
			{
				customPoint.letterPoint = "F";
			}
			else if (averagePoint >= 9.5)
			{
				customPoint.letterPoint = "A+";
			}
			else if (averagePoint >= 8.5)
			{
				customPoint.letterPoint = "A";
			}
			else if (averagePoint >= 8)
			{
				customPoint.letterPoint = "B+";
			}
			else if (averagePoint >= 7)
			{
				customPoint.letterPoint = "B";
			}
			else if (averagePoint >= 6.5)
			{
				customPoint.letterPoint = "C+";
			}
			else if (averagePoint >= 5.5)
			{
				customPoint.letterPoint = "C";
			}
			else if (averagePoint >= 5)
			{
				customPoint.letterPoint = "D+";
			}
			else if (averagePoint >= 4)
			{
				customPoint.letterPoint = "D";
			}
			else
			{
				customPoint.letterPoint = "F";
			}
		}
	}
}
