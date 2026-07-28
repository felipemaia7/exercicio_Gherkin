#language: pt

Funcionalidade: Finalizar Compra

    Como cliente
    Quero finalizar minha compra
    Para receber meus produtos

Cenario: Compra Finalizada com Sucesso

    Dado que o usuario possui produtos no carrinho
    E está autenticado
    Quando informa os dados de pagamento 
    E confirma compra
    Então o pedido deve ser registrado
    E uma mensagem "Compra Concluida!" deve ser exibida

Cenário: Tentativa de finalizar compra com carrinho vazio
    Dado que o carrinho está vazio
    Quando o usuário tenta finalizar a compra
    Então o sistema deve impedir a finalização
    E exibir a mensagem "Carrinho vazio"