#language: pt

Funcionalidade: Cadastro para checkout
    Como cliente
    Quero concluir meu cadastro
    Para receber meus produtos

Cenário: Cadastro realizado com sucesso
    Dado que o cliente está na tela de cadastro
    Quando preenche todos os campos obrigatórios
    Então o cadastro deve ser realizado com sucess
    E uma mensagem "Cadastro Concluido!" deve ser exibida

Esquema do Cenário: Validar formato do e-mail
    Dado que o cliente está na tela de cadastro
    Quando informa o e-mail "<email>"
    Então o sistema deve exibir "<resultado>"

Exemplos:

| email              | resultado                         |
| cliente@email.com  | Cadastro permitido                |
| clienteemail.com   | E-mail inválido                   |
| cliente@           | E-mail inválido                   |

Cenário: Campos obrigatórios não preenchidos
    Dado que o cliente está na tela de cadastro
    Quando tenta concluir o cadastro sem preencher os campos obrigatórios
    Então o sistema deve exibir uma mensagem de alerta