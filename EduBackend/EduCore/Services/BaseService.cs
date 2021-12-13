using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Text.RegularExpressions;
using CukcukCore.Interfaces.BusinessServices;
using CukcukCore.Interfaces.Repositories;
using CukcukCore.Entities;

namespace CukcukCore.BusinessServices
{
	public class BaseService<Entity> : IBaseService<Entity>
	{
		#region props and constructor
		protected IBaseRepository<Entity> baseRepository;
		protected ServiceResult result;
		protected string tableName;
		public BaseService(IBaseRepository<Entity> mBaseRepository) //tiêm
		{
			baseRepository = mBaseRepository;
			result = new ServiceResult();
			tableName = typeof(Entity).Name;
		}
		#endregion

		#region GET INSERT UPDATE DELETE
		/// <summary>
		/// process business CRUD then call IEntityRepository operating with DB
		/// </summary>
		public ServiceResult GetAll()
		{
			result.setField(true, "", baseRepository.GetAll());
			return result;
		}

		public ServiceResult GetById(Guid EntityId)
		{
			result.setField(true, "", baseRepository.GetById(EntityId));
			return result;
		}
		public ServiceResult Insert(Entity entity)
		{
			// 0. Assign new id to entity
			SetId(entity, Guid.NewGuid()); 
			// 1. Validate data: 
			string errorInfo = ValidateData(entity);
			if (errorInfo != null)
			{
				result.setField(false, errorInfo, null);
				return result;
			}
			// 2. Insert new record to database
			if (baseRepository.Insert(entity) > 0)
			{
				result.setField(true, "", entity);
				return result;
			}
			throw new NotImplementedException();
		}

		public ServiceResult Update(Guid EntityId, Entity entity)
		{
			// 0. Assign id to entity
			SetId(entity, EntityId);
			// 1. Validate data: 
			string errorInfo = ValidateData(entity);
			if (errorInfo != null)
			{
				result.setField(false, errorInfo, null);
				return result;
			}
			// 2. Update a record to database
			if (baseRepository.Update(EntityId, entity) > 0)
			{
				result.setField(true, "", entity);
				return result;
			}
			throw new NotImplementedException();
		}

		public ServiceResult Delete(Guid EntityId)
		{
			//1. Check if there is EntityId in database
			var entity = baseRepository.GetById(EntityId);
			if (entity == null)
			{
				result.setField(false, "EntityId not found", null);
				return result;
			}

			//2. Delete record in database
			baseRepository.Delete(EntityId);
			result.setField(true, "", entity);
			return result;
			throw new NotImplementedException();
		}
		#endregion

		#region Additional methods
		public virtual string ValidateData(Entity entity)
		{
			// 0. Normalize entity name field
			normalizeEntityName(entity);
			// 1. Check required fields
			var requiredFields = entity.GetType().GetProperties();
			foreach (var prop in requiredFields)
			{
				var propName = prop.Name;
				var propValue = prop.GetValue(entity);
				var propType = prop.PropertyType;
				
				var requiredAttributes = prop.GetCustomAttributes(typeof(RequiredField), false);
				if (requiredAttributes.Length > 0)
				{
					if(propValue==null)
						return (requiredAttributes[0] as RequiredField).ErrorMsg;
					if (propType == typeof(string) && (string.IsNullOrEmpty(propValue.ToString())))
						return (requiredAttributes[0] as RequiredField).ErrorMsg;
				}
			}
			// 2a. Check duplicate entity code
			var code = entity.GetType().GetProperty($"{tableName}Code").GetValue(entity);
			if (code != null) { 			
				if(baseRepository.checkDuplicateCode(code.ToString()))
				return "Duplicate code!!";
			}
			// 3a. Check entity code format
			string errorMsg = checkEntityCodeFormat(entity);
			if ( ! string.IsNullOrEmpty(errorMsg)) return errorMsg;
			// 3b. Check entity email format if exist
			var email = entity.GetType().GetProperty("Email").GetValue(entity);
			if(email != null) {
				var emailString = email.ToString();
				if (!string.IsNullOrEmpty(emailString)) { 
					if (!Regex.IsMatch(emailString, "/^[a-zA-Z0-9_.-]+@[a-zA-Z0-9_-]+.[a-zA-Z0-9_.-]+$/")) { 
						return "Email format is wrong";
					}
				}
			}
			// Pass validation
			return null;
		}

		public virtual void SetId(Entity entity, Guid id) {}
		public virtual string checkEntityCodeFormat(Entity entity) { return null; }
		public virtual void normalizeEntityName(Entity entity) { }
		#endregion
	}
}
