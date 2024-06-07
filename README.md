
# Atualização de Registros de Vendas

Este script SQL é utilizado para atualizar os registros de uma tabela chamada `VendasLoja`, transferindo os dados da coluna `TotalVendas` do ano atual para o ano anterior. Isso é útil para garantir que os registros estejam sempre atualizados com os dados mais recentes.

## Objetivo

O objetivo deste script é copiar os valores da coluna `TotalVendas` para o ano anterior, de modo que os registros de 2023 reflitam os valores de 2024.

## Script SQL

O código SQL a seguir realiza a atualização dos registros na tabela `VendasLoja`:

```sql
USE [SeuBanco]
GO

UPDATE [VendasLoja]  
SET [TotalVendas] = B.[TotalVendas]
FROM [VendasLoja] 
INNER JOIN [VendasLoja] B ON [VendasLoja].ID = B.ID
WHERE B.[Ano] = 2024 AND [VendasLoja].[Ano] = 2023;
```

### Explicação do Código

1. **Conexão com o Banco de Dados**: O comando `USE [SeuBanco]` seleciona o banco de dados onde a tabela `VendasLoja` está localizada.

2. **Comando de Atualização**: O comando `UPDATE` é utilizado para atualizar os registros na tabela `VendasLoja`.

3. **Configuração dos Novos Valores**: O comando `SET [TotalVendas] = B.[TotalVendas]` define que a coluna `TotalVendas` será atualizada com os valores da mesma coluna (`B.[TotalVendas]`) para os registros correspondentes no ano de 2024.

4. **Junção Interna**: A cláusula `FROM [VendasLoja] INNER JOIN [VendasLoja] B ON [VendasLoja].ID = B.ID` faz uma junção interna na tabela `VendasLoja` com ela mesma, baseada no campo `ID`.

5. **Condições de Atualização**: A cláusula `WHERE B.[Ano] = 2024 AND [VendasLoja].[Ano] = 2023` garante que apenas os registros do ano de 2023 sejam atualizados com os valores correspondentes de 2024.

## Uso

1. Substitua `[SeuBanco]` pelo nome do seu banco de dados.
2. Execute o script em seu ambiente de banco de dados.

## Nota

Certifique-se de fazer um backup do banco de dados antes de executar o script para evitar perda de dados inadvertida.

