using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduCore.Entities
{
    public class Notification
	{
		#region props
		public Guid guid { get; set; } = Guid.NewGuid();

		[RequiredField("senderId cannot be null")]
		public string senderId { get; set; }

		[RequiredField("classId cannot be null")]
		public string classId { get; set; }

		[RequiredField("title cannot be null")]
		public string title { get; set; }

		[RequiredField("message cannot be null")]
		public string message { get; set; }

		[RequiredField("sendTime cannot be null")]
		public DateTime sendTime { get; set; } = DateTime.Now;
		#endregion
	}
}
