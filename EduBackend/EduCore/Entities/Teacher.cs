using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduCore.Entities
{
    public class Teacher
    {
		#region props
		public Guid guid { get; set; } = Guid.NewGuid();

		[RequiredField("teacherId cannot be null")]
		public string teacherID { get; set; }

		[RequiredField("password cannot be null")]
		public string password { get; set; }

		[RequiredField("fullName cannot be null")]
		public string fullName { get; set; }
		public DateTime? birthday { get; set; }
		public string gender { get; set; }
		public string phoneNumber { get; set; }
		public string email { get; set; }
		public string department { get; set; }
		public string brief { get; set; }
		#endregion
	}
}
