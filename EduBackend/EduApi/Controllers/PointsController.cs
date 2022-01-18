using System;
using Microsoft.AspNetCore.Mvc;

using EduCore.Entities;
using EduCore.Interfaces.Services;
using System.Collections.Generic;

namespace EduApi.Controllers
{
	public class PointsController : BasesController<Point>
	{
		private readonly IPointService pointService;
		public PointsController(IPointService mPointService) :base(mPointService)
		{
			pointService = mPointService;
		}

		[HttpGet("Filter")]
		public IActionResult GetCustomPointByFilter(string studentID, string semester)
		{
			try
			{
				response = pointService.GetCustomPointByFilter(studentID, semester);
				return StatusCode(200, response);
			}
			catch (Exception ex)
			{
				return HandleException(ex);
			};
		}

		[HttpGet("GetPointClass")]
		public IActionResult GetPointClass(string studentID)
		{
			try
			{
				response = pointService.GetPointClass(studentID);
				return StatusCode(200, response);
			}
			catch (Exception ex)
			{
				return HandleException(ex);
			};
		}
	}

}
