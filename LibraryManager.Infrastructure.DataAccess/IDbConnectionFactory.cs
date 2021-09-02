using System.Data.Common;

namespace LibraryManager.Infrastructure.DataAccess
{
    public interface IDbConnectionFactory
    {
        DbConnection GetConnection();
    }
}
