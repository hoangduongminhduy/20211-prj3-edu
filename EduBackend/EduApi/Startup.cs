using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Microsoft.OpenApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EduCore.Interfaces.Services;
using EduCore.Interfaces.Repositories;
using EduCore.Services;
using EduInfrastructure.Repositories;

namespace EduApi
{
	public class Startup
	{
		public Startup(IConfiguration configuration)
		{
			Configuration = configuration;
		}

		public IConfiguration Configuration { get; }

		// This method gets called by the runtime. Use this method to add services to the container.
		public void ConfigureServices(IServiceCollection services)
		{
			services.AddCors(); //solve cors

			services.AddControllers();
			services.AddSwaggerGen(c =>
			{
				c.SwaggerDoc("v1", new OpenApiInfo { Title = "EduApi", Version = "v1" });
			});

			// TIÊM: XỬ LÝ DI: for generic interface (khong can quan tam)
			services.AddScoped(typeof(IBaseService<>), typeof(BaseService<>));
			services.AddScoped(typeof(IBaseRepository<>), typeof(BaseRepository<>));


			// TIÊM: XỬ LÝ DI: for service and repository interface of entity Student
			services.AddScoped<IStudentService, StudentService>();
			services.AddScoped<IStudentRepository, StudentRepository>();

			// TIÊM: XỬ LÝ DI: for service and repository interface of entity Teacher
			services.AddScoped<ITeacherService, TeacherService>();
			services.AddScoped<ITeacherRepository, TeacherRepository>();

			// TIÊM: XỬ LÝ DI: for service and repository interface of entity Notification
			services.AddScoped<INotificationService, NotificationService>();
			services.AddScoped<INotificationRepository, NotificationRepository>();

			// TIÊM: XỬ LÝ DI: for service and repository interface for account checking
			services.AddScoped<IAccountService, AccountService>();
			services.AddScoped<IAccountRepository, AccountRepository>();

			// TIÊM: XỬ LÝ DI: for service and repository interface for class checking
			services.AddScoped<IClassService, ClassService>();
			services.AddScoped<IClassRepository, ClassRepository>();

			// TIÊM: XỬ LÝ DI: for service and repository interface for Point
			services.AddScoped<IPointService, PointService>();
			services.AddScoped<IPointRepository, PointRepository>();

			// TIÊM: XỬ LÝ DI: for service and repository interface for studentclass checking
			services.AddScoped<IStudentClassService, StudentClassService>();
			services.AddScoped<IStudentClassRepository, StudentClassRepository>();
			// TIÊM: XỬ LÝ DI: for service and repository interface for studentclass checking
			services.AddScoped<INotificationService, NotificationService>();
			services.AddScoped<INotificationRepository, NotificationRepository>();
			// TIÊM: XỬ LÝ DI: for service and repository interface for subject checking
			services.AddScoped<ISubjectService, SubjectService>();
			services.AddScoped<ISubjectRepository, SubjectRepository>();
			// add more below:

		}

		// This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
		public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
		{
			app.UseCors(
				options => options.WithOrigins("http://example.com").AllowAnyMethod().AllowAnyOrigin().AllowAnyHeader()
			); // solve cors

			if (env.IsDevelopment())
			{
				app.UseDeveloperExceptionPage();
				app.UseSwagger();
				app.UseSwaggerUI(c => c.SwaggerEndpoint("/swagger/v1/swagger.json", "EduApi v1"));
			}

			app.UseHttpsRedirection();

			app.UseRouting();

			app.UseAuthorization();

			app.UseEndpoints(endpoints =>
			{
				endpoints.MapControllers();
			});
		}
	}
}
