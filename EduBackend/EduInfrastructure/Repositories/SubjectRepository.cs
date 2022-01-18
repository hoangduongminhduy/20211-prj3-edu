using EduCore.Entities;
using EduCore.Interfaces.Repositories;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduInfrastructure.Repositories
{
    public class SubjectRepository :BaseRepository<Subject>, ISubjectRepository
    {
        public SubjectRepository(IConfiguration config) : base(config) { }
    }
}
