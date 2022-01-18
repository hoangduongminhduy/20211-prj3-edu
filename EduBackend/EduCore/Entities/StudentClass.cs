using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduCore.Entities
{
	public class StudentClass
	{
		#region props
		public Guid guid { get; set; } = Guid.NewGuid();
		public string studentClassID {get;set;}
		public string studentClassName { get; set; }
		public int K { get; set; }
		public int nbOfStudent { get; set; }
		#endregion
	}
}
