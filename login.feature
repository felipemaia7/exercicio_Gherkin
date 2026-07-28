#language: pt

Funcionalidade: Login
Como cliente da EBAC-SHOP
Quero acessar a plataforma
Para visualizar meus pedidos e realizar compras

Cenario: Login Valido
Dado Que o usuario esta na tela de login
Quando Informa um e-mail e senha válidos
E clica no botão "Entrar"
Entao o sistema deve autenticar o usuario
E redirecioná-lo para a pagina inicial

Esquema do Cenario: Login Invalido
Dado Que o usuario esta na tela de login
Quando Informa um e-mail "<e-mail>" e a senha "<senha>"
E clica no botão "Entrar"
Entao o sistema deve exibir a mensagem "<mensagem>"
E redirecioná-lo para tela de login

Exemplos:
|e-mail|senha|mensagem|
|teste@email.com.br|123|Senha Invalida|
|      |12345678|E-mail obrigatorio|
|teste@gemail.com.br|    |Senha obrigatoria|
|teste@email.com.br|12345678|Senha Válida|