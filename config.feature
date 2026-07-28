#language: pt

Funcionalidade: Configuração da Conta

    Como usuario
    Quero alterar minhas configurações
    Para manter meus dados atualizados

Cenario: ALterar a senha com sucesso

    Dado que o usuario esta autenticado
    Quando informa a senha atual
    E informa uma senha nova Válida
    E confirma a alteração
    Então o sistema deve atualizar a senha
    E exibir uma mensagem "Senha Alterada com Sucesso!"

Cenário: Alterar senha com senha atual incorreta
    Dado que o usuario esta autenticado
    Quando informa a senha atual incorreta
    E tenta salvar a alteração
    Então exibir uma mensagem "Senha Atual Incorreta!"