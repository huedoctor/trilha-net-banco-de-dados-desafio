-- 01

SELECT Nome, Ano FROM Filmes

-- 02

SELECT * FROM Filmes ORDER BY Ano ASC

-- 03

SELECT * FROM Filmes WHERE Nome = 'De Volta para o Futuro'

-- 04

SELECT * FROM Filmes WHERE Ano = 1997

-- 05

SELECT * FROM Filmes WHERE Ano > 2000

-- 06

SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 200 ORDER BY Duracao ASC

-- 07

SELECT Ano,	COUNT(*) AS Quantidade  FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

-- 08

SELECT * FROM Atores WHERE Genero = 'M'

-- 09

SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- 10

SELECT F.Nome, G.Genero FROM Filmes F INNER JOIN FilmesGenero FG ON  F.Id = FG.IdFilme INNER JOIN Generos G ON FG.IdGenero = G.Id

-- 11

SELECT F.Nome, G.Genero FROM Filmes F INNER JOIN FilmesGenero FG ON  F.Id = FG.IdFilme INNER JOIN Generos G ON FG.IdGenero = G.Id WHERE G.Genero ='Mistério'

-- 12

SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM Filmes F INNER JOIN ElencoFilme EF ON  F.Id = EF.IdFilme INNER JOIN Atores A ON A.Id = EF.IdAtor