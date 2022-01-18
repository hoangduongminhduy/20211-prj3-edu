using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EduCore.Models;
using EduCore.Entities;
using EduCore.Interfaces.Services;
using EduCore.Interfaces.Repositories;
namespace EduApi.Controllers
{
    
    public class ClassesController : BasesController<Class>
    {
        private readonly IClassService classService;
		private readonly IClassRepository classRepository;
        public ClassesController(IClassService mClassService, IClassRepository mclassRepository) : base(mClassService)
        {
            classService = mClassService;
			classRepository = mclassRepository ;

        }
        [HttpGet("teacherID")]
		public IActionResult GetClassByTeacherID(string teacherID)
		{
			try
			{
				List<CustomClass> Classlist   = classRepository.GetClassByTeacherID(teacherID);
				response.setField(true, "", Classlist);
				return StatusCode(200, response);
			}
			catch (Exception ex)
			{
				return HandleException(ex);
			};
		}

		[HttpGet("studentID")]
		public IActionResult GetClassByStudentID(string text)
		{
			try
			{
				response = classService.GetClassByStudentID(text);
				return StatusCode(200, response);
			}
			catch (Exception ex)
			{
				return HandleException(ex);
			};
		}

		[HttpGet("paginationClass")]
		public IActionResult GetPaginationClass(int? pageNumber, int? pageSize)
        {
			try
			{
				var response = classRepository.GetPaginationClass(pageNumber, pageSize);

				return StatusCode(200, response);
			}
			catch (Exception ex)
			{
				return HandleException(ex);
			}
		}
	}
}
