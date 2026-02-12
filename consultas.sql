///FATURAMENTO TOTAL

SELECT SUM(p.preco * i.quantidade) AS faturamento_total
FROM itens_pedido i
JOIN produtos p ON i.id_produto = p.id_produto;


///PRODUTO MAIS VENDIDO

SELECT p.nome_produto, SUM(i.quantidade) AS total_vendido
FROM itens_pedido i
JOIN produtos p ON i.id_produto = p.id_produto
GROUP BY p.nome_produto
ORDER BY total_vendido DESC
LIMIT 1;


///CLIENTE QUE MAIS COMPROU

SELECT c.nome, SUM(p.preco * i.quantidade) AS total_gasto
FROM clientes c
JOIN pedidos pe ON c.id_cliente = pe.id_cliente
JOIN itens_pedido i ON pe.id_pedido = i.id_pedido
JOIN produtos p ON i.id_produto = p.id_produto
GROUP BY c.nome
ORDER BY total_gasto DESC;


///FATURAMENTO POR CIDADE

SELECT c.cidade, SUM(p.preco * i.quantidade) AS faturamento
FROM clientes c
JOIN pedidos pe ON c.id_cliente = pe.id_cliente
JOIN itens_pedido i ON pe.id_pedido = i.id_pedido
JOIN produtos p ON i.id_produto = p.id_produto
GROUP BY c.cidade;



