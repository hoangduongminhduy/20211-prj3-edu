using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduCore.Interfaces.Repositories
{
    public interface IAccountRepository
    {
        public string checkAccount(string userID, string password, string role);
    }
}
