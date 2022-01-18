using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EduCore.Entities;
namespace EduCore.Interfaces.Services
{
	/// <summary>
	/// Interface liệt kê các service phục vụ cho Api
	/// CreatedBy; hnminh (10/11/2021)
	/// </summary>
	public interface IBaseService<Entity>
	{
		public ServiceResult GetAll();
		public ServiceResult GetById(Guid EntityId);
		public ServiceResult Insert(Entity entity);
		public ServiceResult Update(Guid EntityId, Entity entity);
		public ServiceResult Delete(Guid EntityId);

		#region Additional methods
		public void SetId(Entity entity, Guid guid);
		#endregion
	}
}
