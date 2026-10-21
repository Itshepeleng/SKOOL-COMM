using SkoolComm.Application.Interfaces;
using SkoolComm.Application.Services;
using SkoolComm.Domain.Interfaces;
using SkoolComm.Infrastructure.Repositores;
using SkoolComm.Infrastructure.Services;
using Supabase;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllersWithViews();
builder.Services.AddSession();


// ===== Supabase + Auth Registration =====
var supabaseUrl = builder.Configuration["Supabase:Url"];
var supabaseKey = builder.Configuration["Supabase:Key"];
Console.WriteLine($"SUPABASE URL LOADED: {supabaseUrl}");

builder.Services.AddScoped<IStudentRepository, StudentRepository>();
builder.Services.AddScoped<IStudentService, StudentService>();

var supabaseOptions = new SupabaseOptions
{
    AutoConnectRealtime = false
};

var supabaseClient = new Client(supabaseUrl, supabaseKey, supabaseOptions);
await supabaseClient.InitializeAsync();

builder.Services.AddSingleton(supabaseClient);
builder.Services.AddScoped<IAuthService, SupabaseAuthService>();
builder.Services.AddScoped<IAnnouncementService, SupabaseAnnouncementService>();
builder.Services.AddScoped<IAttendanceService, SupabaseAttendanceService>();
builder.Services.AddScoped<IEventService, SupabaseEventService>();
builder.Services.AddScoped<IBehaviourService, SupabaseBehaviourService>();
builder.Services.AddScoped<IStaffService, SupabaseStaffService>();




// ========================================


// Build the app
var app = builder.Build();


// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    app.UseHsts();
}

app.UseHttpsRedirection();

app.UseRouting();

app.UseSession();

app.UseAuthorization();

app.MapStaticAssets();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Account}/{action=Login}/{id?}")
    .WithStaticAssets();

app.Run();