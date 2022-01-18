﻿using EduCore.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduCore.Interfaces.Services
{
    public interface IAccountService
    {
        public ServiceResult checkAccount(string userID, string password, string role);
    }
}