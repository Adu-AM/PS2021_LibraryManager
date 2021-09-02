using System;

namespace LibraryManager.Core.Entities
{
    public class Book
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Author { get; set; }
        
        private string _image;

        public string Image { set { _image = value; } }
        public Uri ImageUri { get { return new Uri(_image); } }
       
    }
}
