INSERT INTO clientes (nome, email, cidade) VALUES
('João Silva', 'joao@email.com', 'São Paulo'),
('Maria Souza', 'maria@email.com', 'Rio de Janeiro'),
('Carlos Lima', 'carlos@email.com', 'Belo Horizonte');

INSERT INTO produtos (nome_produto, categoria, preco) VALUES
('Notebook', 'Eletrônicos', 3500.00),
('Mouse', 'Eletrônicos', 80.00),
('Teclado', 'Eletrônicos', 150.00),
('Cadeira Gamer', 'Móveis', 1200.00);

INSERT INTO pedidos (id_cliente, data_pedido) VALUES
(1, '2025-01-10'),
(2, '2025-01-12'),
(1, '2025-02-01');

INSERT INTO itens_pedido (id_pedido, id_produto, quantidade) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 4, 1),
(3, 3, 1);

