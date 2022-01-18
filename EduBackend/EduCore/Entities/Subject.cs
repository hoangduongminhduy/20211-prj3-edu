using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduCore.Entities
{
    public class Subject
    {
		#region props
		public Guid guid { get; set; } = Guid.NewGuid();

		public string subjectID { get; set; }
		public string subjectName { get; set; }

		public int ratio { get; set; }
		public string description { get; set; }
		#endregion
	}
}

