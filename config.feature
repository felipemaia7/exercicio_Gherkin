#language: pt

Funcionalidade: Configurar produto

    Como cliente da EBAC-SHOP
    Quero configurar meu produto
    Para inseri-lo no carrinho

Cenário: Configurar produto com sucesso

    Dado que o cliente está na página do produto
    Quando seleciona uma cor, um tamanho e uma quantidade de 2 unidades
    Então o produto deve estar disponível para ser adicionado ao carrinho
    E exibir uma mensagem "Produto configurado com Sucesso!"

Esquema do Cenário: Validar quantidade de produtos
    Dado que o cliente está configurando um produto
    Quando informa a quantidade <quantidade>
    Então o sistema deve exibir "<resultado>"

Exemplos:
| Quantidade | Resultado                         |
| 1          | Quantidade aceita                 |
| 10         | Quantidade aceita                 |
| 11         | Limite máximo de 10 produtos      |

Cenário: Limpar configurações
    Dado que o cliente selecionou cor, tamanho e quantidade
    Quando clica no botão "Limpar"
    Então o produto deve voltar ao estado original