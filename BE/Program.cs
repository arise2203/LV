using BE.Data.Contexts;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();



// Configure the HTTP request pipeline.
builder.Services.AddDbContext<BeContext>(options =>
{
    options.UseSqlServer(builder.Configuration["DbContextSetting:ConnectionString"], b => b.MigrationsAssembly("webSales"));
});

builder.Services.AddCors(otps =>
{
    otps.AddPolicy("AppCorsPolicy", policy =>
    {
        policy.WithOrigins("*").AllowAnyMethod().AllowAnyHeader();
    });
});

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseCors("AppCorsPolicy");

app.UseAuthorization();

app.MapControllers();

app.Run();
