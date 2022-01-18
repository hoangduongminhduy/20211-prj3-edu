using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduCore.Entities
{
    public class Point
    {
		#region props
		public Guid guid { get; set; } = Guid.NewGuid();

		[RequiredField("studentId cannot be null")]
		public string studentID { get; set; }		
		public string classId { get; set; }
		public float midterm { get; set; }
		public float final { get; set; }
		
		
		#endregion
	}
}
