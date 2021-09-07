using LibraryManager.Services.Interfaces;
using LibraryManager.Core.Interfaces;
using LibraryManager.Services.Dtos;
using System.Threading.Tasks;
using System.Collections.Generic;
using System.Linq;


namespace LibraryManager.Services
{
    public class BookService : IBookServices
    {
        private readonly IBookRepository _bookRepository;

        public BookService(IBookRepository bookRepository)
        {
            _bookRepository = bookRepository;
        }


        /// <summary>
        ///  maparea cu linq
        ///  mai poate fi facuta si cu un extension method
        ///  task: to look into it.
        /// </summary>
        public async Task<IEnumerable<BookDto>> GetBooksAsync()
        {
            var books = await _bookRepository.GetBookAsync();

            var bookDtos = books.Select(b => new BookDto
            {
                Name = b.Name,
                Author = b.Author,
                Image = b.ImageUri
            }).ToList();

            return bookDtos;
        }
    }
}
