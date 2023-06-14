#language : en

Feature: Tela de login
    Como aluno do portal BAC quero me autenticar

    Background: acesso à página de autenticação do portal EBAC

    Scenario: Autenticação inválida
        When eu digitar o usuário "carloshenrique39#"
        And a senha "123"
        Then deve exibir mensagem "Usuário ou senha inválidos"

    Scenario: Autenticação válida
        When eu digitar o usuário "carloshenrique39@gmail.com"
        And a senha "abc@123"
        Then deve exibir a tela de checkout

    Scenario Outline: Autenticação válida de míltiplos usuários
        When eu digitar o usuário <usuario>
        And a senha <senha>
        Then deve exibir a tela de checkout


        Examples:
            | usuario                      | senha      |
            | "carloshenrique39@gmail.com" | "abc@1234" |
            | "joao@hotmail.com"           | "abc@1234" |
            | "jose@gmail.com"             | "abc@1234" |
            | "pedro@yahoo.com"            | "abc@1234" |
            | "marcos@outlook.com"         | "abc@1234" |
            | "maria@gmail.com"            | "abc@1234" |
            | "joana@gmail.com"            | "abc@1234" |