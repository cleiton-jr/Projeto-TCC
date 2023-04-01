using Biblioteca.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;

namespace Projeto_TCC.Models
{
    public class BibliotecaContext : DbContext
    {

        public DbSet<Livro> Livros { get; set; }
        public DbSet<Emprestimo> Emprestimos { get; set; }

        public DbSet<Usuario> Usuario { get; set; }
    }
}