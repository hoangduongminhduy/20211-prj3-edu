using Dapper;
using EduCore.Entities;
using EduCore.Interfaces.Repositories;
using EduCore.Models;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduInfrastructure.Repositories
{
    public class StudentClassRepository :BaseRepository<StudentClass>, IStudentClassRepository
    {
        public StudentClassRepository(IConfiguration config) : base(config)
        { }
        public PaginationModel<dynamic> GetPaginationStudentClass(int? pageNumber, int? pageSize)
        {
            const string sqlCmd = "SELECT * "
                                 + " FROM studentclass ";
            var classList = conn.Query<dynamic>(sqlCmd).ToList();
            var total = classList?.Count ?? 0;
            var PageSize = pageSize ?? 10;
            var PageNumber = pageNumber ?? 1;

            return new PaginationModel<dynamic>
            {
                ItemList = classList?.Skip(PageSize * (PageNumber - 1)).Take(PageSize).ToList() ?? new List<dynamic>(),
                Total = total,
                PageSize = PageSize,
                PageNumber = PageNumber
            };
        }
    }

    
}
