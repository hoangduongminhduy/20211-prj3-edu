using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduCore.Entities
{
    public class Class
    {
		#region props
		public Guid guid { get; set; } = Guid.NewGuid();

		[RequiredField("classId cannot be null")]
		public string classId { get; set; }

		[RequiredField("semester cannot be null")]
		public string semester { get; set; }

		[RequiredField("teacherID cannot be null")]
		public string teacherID { get; set; }
		
		[RequiredField("subjectID cannot be null")]
		public string subjectID { get; set; }
	
		public string classroomName { get; set; }
		[RequiredField("studentClassID cannot be null")]
		public string studentClassID { get; set; }
		public string schedule { get; set; }
		#endregion
	}
}
