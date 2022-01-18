using Dapper;
using EduCore.Interfaces.Repositories;
using Microsoft.Extensions.Configuration;
using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduInfrastructure.Repositories
{
    public class AccountRepository : IAccountRepository
    {
        #region props and constructor
        protected readonly string connString;
        protected readonly MySqlConnection conn;
        public AccountRepository(IConfiguration config)
        {
            // Create connection:
            connString = config.GetConnectionString("ConnectionString1");
            conn = new MySqlConnection(connString);
        }
        #endregion

        public string checkAccount(string userID, string password, string role)
        {
            string tableName;
            if (role.Equals("admin"))
            {
                return password.Equals("2021") ? "admin" : "";
            }
            tableName = role;
            var sqlCmd = $"SELECT {tableName}ID from {tableName} WHERE {tableName}ID = @userID AND password = @password";
            var dparams = new DynamicParameters();
            dparams.Add($"@userID", userID);
            dparams.Add($"@password", password);
            var accountAvailable = conn.QueryFirstOrDefault<string>(sqlCmd, dparams);
            return String.IsNullOrEmpty(accountAvailable) ? "" : accountAvailable;
        }
    }
}
