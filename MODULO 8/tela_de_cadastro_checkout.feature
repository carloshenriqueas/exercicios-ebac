#language: pt

Funcionalidade: tela de cadastro no checkout
    Como aluno do EBAC quero cadastrar cliente no momento de finalização da compra

    Contexto: Dado que eu acesse a tela de checkout

    Esquema do Cenario: campos obrigatórios válidos

        Quando eu digitar <nome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <email>
        Entao compra é finalizada com sucesso

        Exemplos:
            | nome     | sobrenome | pais     | endereco     | cidade     | cep        | telefone      | email                        |
            | "carlos" | "santos"  | "brasil" | "rua a, 205" | "Brumado"  | "46100000" | "32715158554" | "carloshenrique39@gmail.com" |
            | "mike"   | "butler"  | "eua"    | "rua b, 20"  | "Denver"   | "21584684" | "12548361546" | "mike@hotmail.com"             |
            

    
    Cenario: e-mail inválido
        Quando eu inserir o e-mail "carloshenrique#.com"
        Entao sistema exibe a mensagem "Digite um e-mail válido"

    Cenario: cadastrar com campos vazios obrigatórios
        Quando eu deixar todos os campos vazios
        Entao sistema exibe a mensagem "Preencha os campos obrigatórios vazios"