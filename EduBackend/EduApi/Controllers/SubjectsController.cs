using EduCore.Entities;
using EduCore.Interfaces.Repositories;
using EduCore.Interfaces.Services;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EduApi.Controllers
{
 
    public class SubjectsController : BasesController<Subject>
    {
        private readonly ISubjectService SubjectService;
        private readonly ISubjectRepository SubjectRepository;
        public SubjectsController(ISubjectService mSubjectService, ISubjectRepository mSubjectRepository) : base(mSubjectService)
        {
            SubjectService = mSubjectService;
            SubjectRepository = mSubjectRepository;
        }

    }
}
