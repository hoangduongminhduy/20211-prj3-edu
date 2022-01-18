using EduCore.Entities;
using EduCore.Interfaces.Repositories;
using EduCore.Interfaces.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduCore.Services
{
    public class NotificationService : BaseService<Notification>, INotificationService
	{
		#region props and constructor
		INotificationRepository notificationRepository;
		public NotificationService(INotificationRepository mNotificationRepository) : base(mNotificationRepository)
		{
			notificationRepository = mNotificationRepository;
		}


		#endregion
	}
}
