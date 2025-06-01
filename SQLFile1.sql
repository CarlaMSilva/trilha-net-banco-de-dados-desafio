--1
SELECT 
Nome, 
Ano
FROM Filmes;

--2
SELECT 
Nome, 
Ano
FROM Filmes
ORDER BY Ano ASC;

--3
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

--4
SELECT Nome, Ano
FROM Filmes
WHERE Ano = 1997;

--5
SELECT  Nome, Ano
FROM Filmes
WHERE Ano > 2000;

--6
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

--7
SELECT Ano, COUNT(*) AS quantidade_filmes
FROM Filmes
GROUP BY Ano
ORDER BY quantidade_filmes DESC;

--8
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'Masculino';

--9
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'Feminino'
ORDER BY PrimeiroNome ASC;

--10
SELECT f.Nome, g.IdGenero
FROM Filmes f
INNER JOIN FilmesGenero g ON f.Id = g.Id;

--11
SELECT f.Nome, g.IdGenero
FROM Filmes f
INNER JOIN FilmesGenero g ON f.Id = g.Id
WHERE g.IdGenero = 'Mistério';

--12
SELECT f.Nome AS NomeFilme,
       a.PrimeiroNome,
       a.UltimoNome,
       fa.Papel
FROM Filmes f
INNER JOIN ElencoFilme fa ON f.Id = fa.IdFilme
INNER JOIN Atores a ON fa.IdAtor = a.Id
ORDER BY f.Nome, a.PrimeiroNome;
