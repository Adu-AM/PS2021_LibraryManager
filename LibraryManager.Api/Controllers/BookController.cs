using LibraryManager.Core.Entities;
using LibraryManager.Services.Dtos;
using LibraryManager.Services.Interfaces;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LibraryManager.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BookController : ControllerBase
    {
        private readonly IBookServices _bookService;
        private readonly ILogger<BookController> _logger;

        public BookController(IBookServices bookService, ILogger<BookController> logger)
        {
            _bookService = bookService;
            _logger = logger;
        }

        [HttpGet]
        public async Task<ActionResult<IReadOnlyList<BookDto>>> GetBookAsync()
        {
            var result = await _bookService.GetBooksAsync();
            _logger.LogInformation("Books were retrieved succesfully. Books count: {@count}", result.Count());

            return Ok(result);
        }


        /*
        /// Aduc o carte dupa titlu
        [HttpGet("{name}")]
        public async Task<ActionResult<BookDto>> GetBookAsync()
        {
            var bookList = new List<Book>();
            bookList = GetBooksAsync();
            var result = bookLis
            return null;
        }
        */
    }
}
