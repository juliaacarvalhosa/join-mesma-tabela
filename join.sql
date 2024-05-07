USE [SeuBanco]
GO

UPDATE [VendasLoja]  
SET [TotalVendas] = B.[TotalVendas]
FROM [VendasLoja] 
INNER JOIN [VendasLoja] B ON [VendasLoja].ID = B.ID
WHERE B.[Ano] = 2024 AND [TabelaVendasLoja].Ano = 2023;
