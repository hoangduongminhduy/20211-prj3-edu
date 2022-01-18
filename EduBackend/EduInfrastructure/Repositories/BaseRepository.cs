using System;
using System.Linq;
using System.Collections.Generic;
using Microsoft.Extensions.Configuration;
using Dapper;
using MySqlConnector;
using EduCore.Interfaces.Repositories;

namespace EduInfrastructure.Repositories
{
	public class BaseRepository<Entity> : IBaseRepository<Entity>
	{
		#region props and constructor
		protected readonly string connString;
		protected readonly MySqlConnection conn;
		protected readonly string tableName;
		public BaseRepository(IConfiguration config)
		{
			tableName = typeof(Entity).Name.ToLower();
			// Create connection:
			connString = config.GetConnectionString("ConnectionString1");
			conn = new MySqlConnection(connString);
		}
		#endregion

		public List<Entity> GetAll()
		{
			var sqlCmd = $"SELECT * FROM {tableName}";
			return conn.Query<Entity>(sqlCmd).ToList();
		}
		public Entity GetById(Guid EntityId)
		{
			string sqlCmd = $"SELECT * FROM {tableName} WHERE guid = @guid";
			var dparams = new DynamicParameters();
			dparams.Add($"@guid", EntityId.ToString());
			return conn.QueryFirstOrDefault<Entity>(sqlCmd, dparams);
		}
		

		public int Insert(Entity entity)
		{
			var dparams = new DynamicParameters();
			var sqlCols = "";
			var sqlDParams = "";
			var props = entity.GetType().GetProperties();
			foreach (var prop in props)
			{
				var propName = prop.Name;
				sqlCols += $"{propName},";
				sqlDParams += $"@{propName},";

				var propValue = prop.GetValue(entity);
				dparams.Add($"@{propName}", propValue);
			}
			sqlCols = sqlCols.Substring(0, sqlCols.Length - 1);
			sqlDParams = sqlDParams.Substring(0, sqlDParams.Length - 1);
			var sqlCmd = $"INSERT INTO {tableName}({sqlCols}) VALUES({sqlDParams})";
			return conn.Execute(sqlCmd, dparams);
		}

		public int Update(Guid EntityId, Entity entity)
		{
			var dparams = new DynamicParameters();
			var col_param = "";
			var props = entity.GetType().GetProperties();
			foreach (var prop in props)
			{
				var propName = prop.Name;
				col_param += $"{propName}=@{propName},";

				var propValue = prop.GetValue(entity);
				dparams.Add($"@{propName}", propValue);
			}
			col_param = col_param.Substring(0, col_param.Length - 1);
			var sqlCmd = $"UPDATE {tableName} SET {col_param} WHERE guid = @guid";
			return conn.Execute(sqlCmd, dparams);
		}

		public int Delete(Guid EntityId)
		{
			string sqlCmd = $"DELETE FROM {tableName} WHERE guid = @guid";
			DynamicParameters dparams = new();
			dparams.Add($"@guid", EntityId);
			return conn.Execute(sqlCmd, dparams);
		}


		#region Additional methods
		public virtual bool checkDuplicateCode(string EntityCode)
		{
			var sqlCmd = $"SELECT {tableName}ID from {tableName} WHERE {tableName}ID = '@{tableName}ID'";
			var dparams = new DynamicParameters();
			dparams.Add($"@{tableName}ID", EntityCode);
			var duplicateCode = conn.QueryFirstOrDefault<string>(sqlCmd, dparams);
			return (string.IsNullOrEmpty(duplicateCode));
		}
		#endregion
	}
}
