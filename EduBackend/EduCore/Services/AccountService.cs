using EduCore.Entities;
using EduCore.Interfaces.Repositories;
using EduCore.Interfaces.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduCore.Services
{
    public class AccountService : IAccountService
	{
		#region props and constructor
		protected IAccountRepository accountRepository;
		protected ServiceResult result;
		public AccountService(IAccountRepository mAccountRepository) //tiêm
		{
			accountRepository = mAccountRepository;
			result = new ServiceResult();
		}
		#endregion

		public ServiceResult checkAccount(string userID, string password, string role)
        {
			string isValid = accountRepository.checkAccount(userID, password, role);

			if (String.IsNullOrEmpty(isValid))
			{
				result.setField(false, "Sai thông tin đăng nhập", null);
			} else
            {
				result.setField(true, "", isValid);
            }

			return result;
		}
    }
}
