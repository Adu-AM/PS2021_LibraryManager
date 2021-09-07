using LibraryManager.Api.Config;
using LibraryManager.Core.Interfaces;
using LibraryManager.Infrastructure.DataAccess;
using LibraryManager.Repositories;
using LibraryManager.Services;
using LibraryManager.Services.Interfaces;
using Microsoft.Extensions.DependencyInjection;

namespace LibraryManager.Api.Extensions
{
    public static class LibraryManagerDependencyInjectionExtensions
    {
        public static IServiceCollection AddLibraryManagerServices(this IServiceCollection services)
        {
            services.AddSingleton<IAppConfig>(ctx => AppConfig.Instance);

            services.AddSingleton<IDbConnectionFactory>(ctx =>
                new DbConnectionFactory(ctx.GetRequiredService<IAppConfig>().ConnectionString));

            services.AddScoped<IBookRepository, BookRepository>();

            services.AddScoped<IBookServices, BookService>();

            return services;

        }
    }
}
