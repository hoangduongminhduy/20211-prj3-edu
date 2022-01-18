using EduCore.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduCore.Interfaces.Repositories
{
    public interface INotificationRepository : IBaseRepository<Notification>
    {
        //nhatminh
        List<Notification> GetNotifiFromAStudent(string studentID);
        //nhatminh
        List<Notification> GetNotifiToAStudent(string studentID);

        List<Notification> GetNotByStudentID(string studentID);

        List<Notification> GetNotificationByTeacherID(string teacherID);
    }
}
