
# Este exemplo mostra uma versão interativa exibindo os resultados em uma tabela usando Pandas


import mysql.connector
import pandas as pd


conexao = mysql.connector.connect(
    host="nome_do_servidor",
    user="usuario",
    password="senha",
    database="nome_do_banco"
)
print("✅ Conexão estabelecida com sucesso!\n")


cursor = conexao.cursor(dictionary=True)


query = """
SELECT
    p.id_pedido AS pedido_id,
    c.nome,
    c.email,
    pr.nome AS produto,
    pr.preco,
    p.quantidade,
    ce.cidade,
    ce.estado
FROM pedidos AS p
INNER JOIN clientes AS c ON p.id_cliente = c.id_cliente
INNER JOIN produtos AS pr ON p.id_produto = pr.id_produto
INNER JOIN cep AS ce ON c.cep = ce.cep
ORDER BY c.nome;
"""


cursor.execute(query)
resultados = cursor.fetchall()


df = pd.DataFrame(resultados)

df
