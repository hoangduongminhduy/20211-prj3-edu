using Dapper;
using EduCore.Entities;
using EduCore.Interfaces.Repositories;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduInfrastructure.Repositories
{
    public class NotificationRepository : BaseRepository<Notification>, INotificationRepository
    {
        public NotificationRepository(IConfiguration config) : base(config){}

        // nhatminh
        public List<Notification> GetNotifiFromAStudent(string studentID)
        {
            string sqlCmd = $"SELECT *" +
                $" FROM  notification" +
                $" WHERE senderID=@studentID";
            var dparams = new DynamicParameters();
            dparams.Add($"@studentID", studentID);
            return conn.Query<Notification>(sqlCmd, dparams).ToList();
        }

        // nhatminh
        public List<Notification> GetNotifiToAStudent(string studentID)
        {
            string sqlCmd = $"SELECT studentclassID FROM student WHERE studentID='{studentID}'";
            String studentclassID = conn.QueryFirstOrDefault<String>(sqlCmd);

            sqlCmd = $"SELECT n.* from notification n JOIN (SELECT classID FROM class WHERE studentclassID='{studentclassID}') c ON n.classID=c.classID";
            return conn.Query<Notification>(sqlCmd).ToList();
        }


        public List<Notification> GetNotByStudentID(string studentID)
        {
            string sqlCmd = $"SELECT * " +
            $"FROM  notification n ,student st, class c " +
            //$"JOIN class c " +
            //$"ON c.classID= n.classID " +
            //$"JOIN studentclass sc " +
            //$"ON sc.studentClassID=sc.studentClassID " +
            $"WHERE c.studentclassID= st.studentclassID " +
            $"AND n.classID=c.classID " +
            $"AND st.studentID=@studentID " +
            $"";
            var dparams = new DynamicParameters();
            dparams.Add($"@studentID", studentID);
            return conn.Query<Notification>(sqlCmd, dparams).ToList();
        }
        

        public List<Notification> GetNotificationByTeacherID(string teacherID)
        {
            /*
                SELECT * FROM notification AS n, class AS c, teacher AS t
                WHERE
                n.classID = c.classID
                AND t.teacherID = c.teacherID
                AND t.teacherID = "20288"
             */


            string sqlCmd = $"SELECT * " +
            $"FROM notification AS n, class AS c, teacher AS t " +
            $"WHERE n.classID = c.classID " +
            $"AND t.teacherID = c.teacherID " +
            $"AND t.teacherID = @teacherID";
            var dparams = new DynamicParameters();
            dparams.Add($"@teacherID", teacherID);
            return conn.Query<Notification>(sqlCmd, dparams).ToList();
        }
    }
}
