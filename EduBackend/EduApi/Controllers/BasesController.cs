using System;
using Microsoft.AspNetCore.Mvc;

using EduCore.Entities;
using EduCore.Interfaces.Services;
using System.Collections.Generic;

namespace EduApi.Controllers
{
	/**
	 * Một API được phân biệt qua: 
	 *		route (api/Bases)
	 *		method (HttpGet,...)
	 *		endpoint (nếu không có {} thì không yêu cầu truyền tham số)
	 */

	/**
	 * THIET KE CHUAN RESTFUL
	 */

	/**
	 * http response:
	 * 200 OK
	 * 201 CREATED
	 * 400 BAD REQUEST: INPUT INVALID FROM USER
	 * 401 UNAUTHORIZED
	 * 403 FORBIDDEN, even AUTHORIZED
	 * 404 NOT FOUND
	 * 500 INTERNAL SERVER ERROR (code logic error)
	 */

	/**
	 * TECHNIQUE: filter, sort, paging and offset
	 */

	/**
	 * Format return data: JSON
	 */

	[Route("api/v1/[controller]")]
	[ApiController]
	public class BasesController<Entity> : ControllerBase
	{
		protected readonly IBaseService<Entity> baseService;
		protected ServiceResult response;
		public BasesController(IBaseService<Entity> mBaseService)
		{
			baseService = mBaseService;
			response = new ServiceResult();
		}

        public BasesController(ISubjectService mSubjectService)
        {
        }


        #region GET POST PUT DELETE PROTOCOL
        [HttpGet]
		public IActionResult Get()
		{
			try
			{
				response = baseService.GetAll();
				return StatusCode(200, response.data);
			}
			catch(Exception ex)
			{
				return HandleException(ex);
			};
		}

		[HttpGet("{EntityId}")] 
		public IActionResult GetById(Guid EntityId)
		{
			try
			{
				response = baseService.GetById(EntityId);
				return StatusCode(200, response);
			}
			catch (Exception ex)
			{
				return HandleException(ex);
			};
		}

		/// <summary>
		/// Insert new entity to database
		/// </summary>
		/// <approach>
		/// 1. Use store procedure to make code shorter
		/// (Ex: Proc_Insert is a procedure stored in database)
		/// 2. Build sqlCmd by for loop as below (see code of infrastructure package)
		/// <approach>
		[HttpPost]
		public IActionResult Post([FromBody] Entity entity)
		{
			try
			{
				response = baseService.Insert(entity);
				if (response.success) return StatusCode(201, response.data);
				else return StatusCode(400, response);
			}
			catch (Exception ex)
			{
				return HandleException(ex);
			}
		}


		[HttpPut("{EntityId}")]
		public IActionResult Put(Guid EntityId, [FromBody] Entity entity)
		{
			try
			{
				response = baseService.Update(EntityId, entity);
				if (response.success) return StatusCode(200, response.data);
				else return StatusCode(400, response);
			}
			catch (Exception ex)
			{
				return HandleException(ex);
			}
		}


		[HttpDelete("{EntityId}")]
		public IActionResult Delete(Guid EntityId) {
			try
			{
				response = baseService.Delete(EntityId);
				if (response.success) return StatusCode(200, response.data);
				else return StatusCode(400, response);
			}
			catch (Exception ex)
			{
				return HandleException(ex);
			}
		}
		#endregion


		#region Additional methods
		protected IActionResult HandleException(Exception ex)
		{
			response.setField(false, ex.Message, null);
			return StatusCode(500, response);
		}
		#endregion
	}
}
