using System;
using System.Linq;
using System.Collections.Generic;
using Microsoft.Extensions.Configuration;
using Dapper;

using EduCore.Interfaces.Repositories;
using EduCore.Entities;
using EduCore.Models;

namespace EduInfrastructure.Repositories
{
	public class StudentRepository : BaseRepository<Student>, IStudentRepository
	{
		public StudentRepository(IConfiguration config) : base(config)
		{ }

        public List<Student> GetStudentByClassID(string classID)
        {
            string sqlCmd = $"SELECT student.* FROM (student,class)" +
                $" WHERE class.classID=@classID AND class.studentClassID=student.studentClassID";
            var dparams = new DynamicParameters();
            dparams.Add($"@classID", classID);
            return conn.Query<Student>(sqlCmd, dparams).ToList();
        }

        public PaginationModel<Student> GetPaginationStudent(int? pageNumber, int? pageSize)
        {
            const string sqlCmd = "SELECT s.*"
                                + " FROM student s";
            var studentList = conn.Query<Student>(sqlCmd).ToList();
            var total = studentList?.Count ?? 0;
            var PageSize = pageSize ?? 10;
            var PageNumber = pageNumber ?? 1;

            return new PaginationModel<Student>
            {
                ItemList = studentList?.Skip(PageSize * (PageNumber - 1)).Take(PageSize).ToList() ?? new List<Student>(),
                Total = total,
                PageSize = PageSize,
                PageNumber = PageNumber
            };
        }
    }
}
