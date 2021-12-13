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
	public class CustomerService : BaseService<Student>, IStudentService
	{
		#region props and constructor
		IStudentRepository customerRepository;
		public CustomerService(IStudentRepository mCustomerRepository) : base(mCustomerRepository)
		{
			customerRepository = mCustomerRepository;
		}
		#endregion


		#region Additional methods
		public override void SetId(Student customer, Guid id)
		{
			customer.CustomerId = id;
		}
		public override string checkEntityCodeFormat(Student customer)
		{
			if (!string.IsNullOrEmpty(customer.CustomerCode))
			{
				if (!Regex.IsMatch(customer.CustomerCode, "/^[KH-]+[0-9]+$/"))
				{
					return "CustomerCode format must be like KH-001, KH-9191, ...";
				}
			}
			return null;
		}
		public override void normalizeEntityName(Student customer)
		{
			string code = customer.CustomerCode;
			code = string.IsNullOrEmpty(code) ? "" : code.Trim(); // Xóa đầu cuối
			Regex trimInner = new Regex(@"\s\s+"); // Xóa khoảng trắng thừa trong chuỗi
			code = trimInner.Replace(code, " ");
			customer.CustomerCode = code;
		}
		#endregion
	}
}
