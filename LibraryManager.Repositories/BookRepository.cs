using LibraryManager.Core.Interfaces;
using LibraryManager.Core.Entities;
using System;
using System.Threading.Tasks;
using System.Collections.Generic;
using LibraryManager.Infrastructure.DataAccess;

namespace LibraryManager.Repositories
{
    public class BookRepository : IBookRepository
    {
        private readonly IDbConnectionFactory _connectionFactory;

        public BookRepository(IDbConnectionFactory connectionFactory)
        {
            _connectionFactory = connectionFactory;
        }

        public Task<IEnumerable<Book>> GetBookAsync()
        {
            throw new NotImplementedException();
        }
    }
}
