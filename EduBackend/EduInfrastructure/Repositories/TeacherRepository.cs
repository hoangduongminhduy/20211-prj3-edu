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
	public class TeacherRepository : BaseRepository<Teacher>, ITeacherRepository
	{
		public TeacherRepository(IConfiguration config) : base(config)
		{ }
		public Teacher GetTeacherDetail(string teacherID)
		{
			string sqlCmd = $"SELECT * FROM {tableName} WHERE teacherID = @teacherID";
			var dparams = new DynamicParameters();
			dparams.Add($"@teacherID", teacherID);
			return conn.QueryFirstOrDefault<Teacher>(sqlCmd, dparams);
		}

		public PaginationModel<Teacher> GetPaginationTeacher(int? pageNumber, int? pageSize)
        {
            const string sqlCmd = "SELECT s.*"
                                + " FROM teacher s";
            var teacherList = conn.Query<Teacher>(sqlCmd).ToList();
            var total = teacherList?.Count ?? 0;
            var PageSize = pageSize ?? 10;
            var PageNumber = pageNumber ?? 1;

            return new PaginationModel<Teacher>
            {
                ItemList = teacherList?.Skip(PageSize * (PageNumber - 1)).Take(PageSize).ToList() ?? new List<Teacher>(),
                Total = total,
                PageSize = PageSize,
                PageNumber = PageNumber
            };
        }
	}
}
