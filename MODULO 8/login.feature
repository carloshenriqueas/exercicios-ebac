#language : pt

Funcionalidade: Tela de login
    Como aluno do portal BAC quero me autenticar

    Contexto: Dado que eu acesse a página de autenticação do portal EBAC

    Cenario: Autenticação inválida
        Quando eu digitar o usuário "carloshenrique39#"
        E a senha "123"
        Entao deve exibir mensagem "Usuário ou senha inválidos"

    Cenario: Autenticação válida
        Quando eu digitar o usuário "carloshenrique39@gmail.com"
        E a senha "abc@123"
        Entao deve exibir a tela de checkout