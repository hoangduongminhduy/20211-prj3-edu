using System;
using Microsoft.AspNetCore.Mvc;

using EduCore.Entities;
using EduCore.Interfaces.Services;
using System.Collections.Generic;
using EduCore.Interfaces.Repositories;

namespace EduApi.Controllers
{
	public class StudentsController : BasesController<Student>
	{
		private readonly IStudentService studentService;
		private readonly IStudentRepository studentRepository;
		public StudentsController(IStudentService mStudentService, IStudentRepository mstudentRepository) :base(mStudentService)
		{
			studentService = mStudentService;
			studentRepository = mstudentRepository;
		}

		[HttpGet("classID")]
		public IActionResult GetStudentByClassID(string classID)
		{
			try
			{
                List<Student> Studentlist = studentRepository.GetStudentByClassID(classID);
				response.setField(true, "", Studentlist);
				return StatusCode(200, response);
			}
			catch (Exception ex)
			{
				return HandleException(ex);
			};
		}

		[HttpGet("paginationStudent")]
		public IActionResult GetPaginationStudent(int? pageNumber, int? pageSize)
		{
			try
			{
				response = studentService.GetPaginationStudent(pageNumber, pageSize);

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
