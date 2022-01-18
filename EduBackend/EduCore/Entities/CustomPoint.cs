using System;

namespace EduCore.Entities
{
	public class CustomPoint : Point
	{
		public CustomPoint()
		{
		}

		#region props
		public string subjectName { get; set; }
		public int ratio { get; set; }
		public string letterPoint { get; set; }
		public string fullName { get; set; }
		public string subjectID { get; set; }

		public string semester { get; set; }
		#endregion
	}
}
