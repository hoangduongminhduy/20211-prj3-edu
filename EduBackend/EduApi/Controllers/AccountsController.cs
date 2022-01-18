using EduCore.Entities;
using EduCore.Interfaces.Repositories;
using EduCore.Interfaces.Services;
using Microsoft.AspNetCore.Mvc;
using System;

namespace EduApi.Controllers
{
	[Route("api/v1/")]
	[ApiController]
	public class AccountsController : ControllerBase
	{
		protected readonly IAccountService accountService;
		protected ServiceResult response;

		public AccountsController(IAccountService mAccountService)
		{
			accountService = mAccountService;
		}

		[HttpGet("login")]
		public IActionResult checkAccount(string userID, string password, string role)
		{
			try
			{
				response = accountService.checkAccount(userID, password, role);
				if (response.success) return StatusCode(200, response);
				else return StatusCode(400, response);
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