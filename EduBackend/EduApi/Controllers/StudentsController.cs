using System;
using Microsoft.AspNetCore.Mvc;

using CukcukCore.Entities;
using CukcukCore.Interfaces.BusinessServices;
using System.Collections.Generic;

namespace CukcukApi.Controllers
{
	public class StudentsController : BasesController<Student>
	{
		private readonly IStudentService customerService;
		public StudentsController(IStudentService mCustomerService) :base(mCustomerService)
		{
			customerService = mCustomerService;
		}
	}

}
