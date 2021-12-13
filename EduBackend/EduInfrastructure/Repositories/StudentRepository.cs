using System;
using System.Linq;
using System.Collections.Generic;
using Microsoft.Extensions.Configuration;
using Dapper;

using CukcukCore.Interfaces.Repositories;
using CukcukCore.Entities;

namespace MariaInfrastructure.Repositories
{
	public class StudentRepository : BaseRepository<Student>, IStudentRepository
	{
		public StudentRepository(IConfiguration _config) : base(_config)
		{ }
	}
}
