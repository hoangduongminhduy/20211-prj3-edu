using System;

namespace EduCore.Entities
{
	public class Student
	{
		#region props
		public Guid guid { get; set; } = Guid.NewGuid();
		
		[RequiredField("studentId cannot be null")]
		public string studentID { get; set; }
		
		[RequiredField("passWord cannot be null")]
		public string password { get; set; }
		
		[RequiredField("fullName cannot be null")]
		public string fullName { get; set; }
		public DateTime? birthday { get; set; } 
		public string gender { get; set; }
		public string phoneNumber { get; set; }
		public string email { get; set; }

		public string studentClassID { get; set; }
		#endregion
	}
}
