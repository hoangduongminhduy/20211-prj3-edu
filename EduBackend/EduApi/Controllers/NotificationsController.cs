using System;
using Microsoft.AspNetCore.Mvc;

using EduCore.Entities;
using EduCore.Interfaces.Services;
using System.Collections.Generic;
using EduCore.Interfaces.Repositories;

namespace EduApi.Controllers
{
	public class NotificationsController : BasesController<Notification>
	{
		private readonly INotificationService notificationService;
		private readonly INotificationRepository NotificationRepository;
		public NotificationsController(INotificationService mNotificationService, INotificationRepository mnotificationRepository) : base(mNotificationService)
		{
			notificationService = mNotificationService;
			NotificationRepository = mnotificationRepository;
		}

		[HttpGet("FromAStudent")]
		public IActionResult GetNotifiFromAStudent(string studentID)
		{
			try
			{
				List<Notification> Classlist = NotificationRepository.GetNotifiFromAStudent(studentID);
				response.setField(true, "", Classlist);
				return StatusCode(200, response);
			}
			catch (Exception ex)
			{
				return HandleException(ex);
			};
		}

		[HttpGet("ToAStudent")]
		public IActionResult GetNotifiToAStudent(string studentID)
		{
			try
			{
				List<Notification> Classlist = NotificationRepository.GetNotifiToAStudent(studentID);
				response.setField(true, "", Classlist);
				return StatusCode(200, response);
			}
			catch (Exception ex)
			{
				return HandleException(ex);
			};
		}


		[HttpGet("studentID")]
		public IActionResult GetNotByStudentID(string studentID)
		{
			try
			{
				List<Notification> Classlist = NotificationRepository.GetNotByStudentID(studentID);
				response.setField(true, "", Classlist);
				return StatusCode(200, response);
			}
			catch (Exception ex)
			{
				return HandleException(ex);
			};
		}

		[HttpGet("teacherID")]
		public IActionResult GetNotificationByTeacherID(string teacherID)
		{
			try
			{
				List<Notification> notificationList = NotificationRepository.GetNotificationByTeacherID(teacherID);
				response.setField(true, "", notificationList);
				return StatusCode(200, response);
			}
			catch (Exception ex)
			{
				return HandleException(ex);
			};
		}
	}

}
