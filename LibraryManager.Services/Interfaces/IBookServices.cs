using LibraryManager.Services.Dtos;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace LibraryManager.Services.Interfaces
{
    public interface IBookServices
    {
        Task<IEnumerable<BookDto>> GetBooksAsync();
    }
}
