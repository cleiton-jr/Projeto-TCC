CREATE DATABASE Biblioteca;
USE Biblioteca;

CREATE TABLE Livros 
(
  Id int(11) NOT NULL,
  Titulo longtext DEFAULT NULL,
  Autor longtext DEFAULT NULL,
  Ano int(11) NOT NULL
);

CREATE TABLE Emprestimos 
(
  Id int(11) NOT NULL,
  DataEmprestimo datetime(6) NOT NULL,
  DataDevolucao datetime(6) NOT NULL,
  NomeUsuario longtext DEFAULT NULL,
  Telefone longtext DEFAULT NULL,
  Devolvido tinyint(1) NOT NULL,
  LivroId int(11) NOT NULL
);

CREATE TABLE Usuario 
(
  Id int(11) NOT NULL,
  Login longtext DEFAULT NULL,
  Senha longtext DEFAULT NULL
);

INSERT INTO `Livros` (`Id`, `Titulo`, `Autor`, `Ano`) VALUES
(1, 'Dom Quixote', 'Miguel de Cervantes', 1605),
(2, 'Guerra e Paz', 'Liev Tolstói', 1869),
(3, 'A Montanha Mágica', 'Thomas Mann', 1924),
(4, 'Cem Anos de Solidão', 'Gabriel García Márquez', 1967),
(5, 'A Divina Comédia', 'Dante Alighieri', 1321),
(6, 'Em Busca do Tempo Perdido', 'Marcel Proust', 1913);

INSERT INTO `Emprestimos` (`Id`, `DataEmprestimo`, `DataDevolucao`, `NomeUsuario`, `Telefone`, `Devolvido`, `LivroId`) VALUES
(1, '2021-04-07 00:00:00.000000', '2021-04-12 00:00:00.000000', 'Rafael', '988195244', 0, 3),
(2, '2021-04-07 00:00:00.000000', '2021-04-15 00:00:00.000000', 'João', '988196844', 1, 2),
(3, '2021-04-07 00:00:00.000000', '2021-04-13 00:00:00.000000', 'Pedro', '988195766', 0, 6),
(4, '2021-04-05 00:00:00.000000', '2021-04-07 00:00:00.000000', 'Carlos', '988195255', 0, 1);

INSERT INTO `Usuario` (`Id`, `Login`, `Senha`) VALUES
(2, 'roberto', '1305'),
(3, 'pedro', '2050'),
(4, 'maria', '1401'),
(5, 'joão', '2030'),
(6, 'rafael', '1701'),
(7, 'admin', '1234');
