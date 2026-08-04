#language: pt

Funcionalidade: Login
    Como cliente da EBAC-SHOP
    Quero acessar a plataforma
    Para visualizar meus pedidos e realizar compras

Cenario: Login Valido
    Dado que o cliente está na tela de login
    Quando informa usuário e senha válidos
    Então deve ser direcionado para a tela de checkout

Esquema do Cenário: Login inválido
    Dado que o cliente está na tela de login
    Quando informa "<usuario>" e "<senha>"
    Então o sistema deve exibir a mensagem "Usuário ou senha inválidos"

Exemplos:
|e-mail            |senha   |mensagem          |
|teste@email.com.br|123     |Senha Invalida    |
|                  |12345678|E-mail obrigatorio|
|teste@email.com.br|        |Senha obrigatoria |
|teste@email.com.br|12345678|Senha Válida      |