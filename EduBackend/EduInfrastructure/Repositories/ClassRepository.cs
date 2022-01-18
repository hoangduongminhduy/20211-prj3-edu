using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EduCore.Interfaces.Repositories;
using EduCore.Entities;
using Microsoft.Extensions.Configuration;
using Dapper;
using EduCore.Models;

namespace EduInfrastructure.Repositories
{
     public class ClassRepository :BaseRepository<Class>, IClassRepository
    {
        public ClassRepository(IConfiguration config) : base(config) { }

        public List<CustomClass> GetClassByTeacherID(string teacherID)
        {
            string sqlCmd = $"SELECT * FROM (class, studentclass, subject)" +
                //$"JOIN (student_class,subject)" +
                //$" ON (student_class.studentClassID=class.studentClassID AND" +
                //$"subject.subjectID=class.subjectID)" +
                $" WHERE teacherID=@teacherID AND studentclass.studentClassID=class.studentClassID AND subject.subjectID=class.subjectID ";
            var dparams = new DynamicParameters();
            dparams.Add($"@teacherID", teacherID);
            return conn.Query<CustomClass>(sqlCmd,dparams).ToList();
        }

        public Class GetClass(string classID)
        {
            string sqlCmd = $"SELECT * FROM ({tableName})" +
                $" WHERE classID=@classID";
            var dparams = new DynamicParameters();
            dparams.Add($"@classID", classID);
            return conn.QueryFirstOrDefault<Class>(sqlCmd, dparams);
        }

        public List<CustomClass> GetClassByStudentID(string studentID)
        {
            string sqlCmd = $"SELECT studentclassID FROM student" +
                $" WHERE studentID = @studentID ";
            var dparams = new DynamicParameters();
            dparams.Add($"@studentID", studentID);
            string studentclassID = conn.QueryFirstOrDefault<string>(sqlCmd,dparams);

            sqlCmd = $"SELECT c.*, s.subjectName, t.fullName AS teacherName" +
                $" FROM (SELECT * FROM class WHERE studentclassID='{studentclassID}') AS c" +
                $" LEFT JOIN subject s ON s.subjectID=c.subjectID" +
                $" LEFT JOIN teacher t ON t.teacherID=c.teacherID";
            return conn.Query<CustomClass>(sqlCmd).ToList();
        }

        public PaginationModel<dynamic> GetPaginationClass(int? pageNumber, int? pageSize)
		{
            const string sqlCmd = "SELECT c.*, s.subjectName, t.fullName AS teacherName, t.email AS teacherMail"
                                + " FROM class c"
                                + " LEFT JOIN subject s ON s.subjectID=c.subjectID"
                                + " LEFT JOIN teacher t ON t.teacherID=c.teacherID";
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
