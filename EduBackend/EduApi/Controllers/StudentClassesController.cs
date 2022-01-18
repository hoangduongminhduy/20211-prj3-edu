using EduCore.Entities;
using EduCore.Interfaces.Repositories;
using EduCore.Interfaces.Services;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EduApi.Controllers
{
    
    public class StudentClassesController : BasesController<StudentClass>
    {
        private readonly IStudentClassService StudentClassService;
        private readonly IStudentClassRepository studentclassRepository;
        public StudentClassesController(IStudentClassService mStudentClassService, IStudentClassRepository mstudentclassRepository) : base(mStudentClassService)
        {
            StudentClassService = mStudentClassService;
            studentclassRepository = mstudentclassRepository;
        }



        [HttpGet("paginationClass")]
        public IActionResult GetPaginationClass(int? pageNumber, int? pageSize)
        {
            try
            {
                var response = studentclassRepository.GetPaginationStudentClass(pageNumber, pageSize);

                return StatusCode(200, response);
            }
            catch (Exception ex)
            {
                return HandleException(ex);
            }
        }
    }
}
