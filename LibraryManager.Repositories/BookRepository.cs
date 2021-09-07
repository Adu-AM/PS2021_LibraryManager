using LibraryManager.Core.Interfaces;
using LibraryManager.Core.Entities;
using System;
using System.Threading.Tasks;
using System.Collections.Generic;
using LibraryManager.Infrastructure.DataAccess;
using Dapper;

namespace LibraryManager.Repositories
{
    public class BookRepository : IBookRepository
    {
        private readonly IDbConnectionFactory _connectionFactory;

        public BookRepository(IDbConnectionFactory connectionFactory)
        {
            _connectionFactory = connectionFactory;
        }

        public async  Task<IEnumerable<Book>> GetBookAsync()
        {
            const string query = @"Select * from Book";
            return  await _connectionFactory.GetConnection().QueryAsync<Book>(query);
        }
    }
}
