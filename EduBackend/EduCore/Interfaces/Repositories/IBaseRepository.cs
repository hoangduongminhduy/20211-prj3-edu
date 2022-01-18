using EduCore.Entities;
using EduCore.Interfaces.Services;
using System;
using System.Collections.Generic;

namespace EduCore.Interfaces.Repositories
{
	/// <summary>
	/// Giao diện giao tiếp với Infrastructure subsystem
	/// </summary>
	public interface IBaseRepository<Entity>
	{
		public List<Entity> GetAll();
		public Entity GetById(Guid EntityId);
		public int Insert(Entity entity);
		public int Update(Guid EntityId, Entity entity);
		public int Delete(Guid EntityId);
		public bool checkDuplicateCode(string EntityCode);
	}
}
