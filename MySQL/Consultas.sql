-- Consultas 

-- 1ª) Qual o Top 5 produtos que mais geraram faturamento?

SELECT produto as Nome_Produto, SUM(Valor_Venda) as Faturamento FROM Vendas
GROUP BY Nome_Produto
ORDER BY Faturamento DESC
LIMIT 5;

-- 2ª) Qual o Top 5 clientes que mais gastaram na loja?

SELECT c.Nome, v.Id_cliente AS Codigo_cliente, SUM(v.Valor_venda) AS Valor_compras FROM vendas v
JOIN Clientes c ON c.Id_cliente = v.Id_cliente
GROUP BY c.Id_cliente
ORDER BY Valor_compras DESC
LIMIT 5;

-- 3ª) Qual o faturamento médio por cliente que é assinante do "ZOOP Prime" em comparação com os não assinantes?

SELECT Plano_assinatura, AVG(v.Valor_venda) AS Faturamento_médio_por_cliente FROM vendas v
JOIN clientes c ON c.Id_cliente = v.Id_cliente
WHERE Plano_Assinatura = 'Sim' OR Plano_Assinatura = 'Não'
GROUP BY Plano_Assinatura;
