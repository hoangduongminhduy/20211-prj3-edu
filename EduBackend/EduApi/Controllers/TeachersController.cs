using System;
using Microsoft.AspNetCore.Mvc;

using EduCore.Entities;
using EduCore.Interfaces.Services;
using EduCore.Interfaces.Repositories;
using System.Collections.Generic;

namespace EduApi.Controllers
{
	public class TeachersController : BasesController<Teacher>
	{
		private readonly ITeacherService teacherService;
		private readonly ITeacherRepository teacherRepository;
		public TeachersController(ITeacherService mTeacherService, ITeacherRepository mteacherRepository) :base(mTeacherService)
		{
			teacherService = mTeacherService;
			teacherRepository = mteacherRepository;
		}

		[HttpGet("detail")]
		public IActionResult getTeacherDetail(string teacherID)
		{
			try
			{
				Teacher teacherDetail = teacherRepository.GetTeacherDetail(teacherID);
				if (teacherDetail != null)
                {
					response.setField(true, "", teacherDetail);
					return StatusCode(200, response);
				}
				response.setField(false, "", null);
				return StatusCode(400, response);
			}
			catch (Exception ex)
			{
				return HandleException(ex);
			}
		}

		[HttpGet("paginationTeacher")]
		public IActionResult GetPaginationTeacher(int? pageNumber, int? pageSize)
		{
			try
			{
				response = teacherService.GetPaginationTeacher(pageNumber, pageSize);

				return StatusCode(200, response);
			}
			catch (Exception ex)
			{
				return HandleException(ex);
			}
		}

		private IActionResult HandleException(Exception ex)
		{
			response.setField(false, ex.Message, null);
			return StatusCode(500, response);
		}
	}

}
