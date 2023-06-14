#language: en

Feature: tela de cadastro no checkout
    Como aluno do EBAC quero cadastrar cliente no momento de finalização da compra

    Background: acesso à tela de checkout

    Scenario Outline: campos obrigatórios válidos

        When eu digitar <nome>
        And o pais <pais>
        And o endereco <endereco>
        And a cidade <cidade>
        And o cep <cep>
        And o telefone <telefone>
        And o e-mail <email>
        Then compra é finalizada com sucesso

        Examples:
            | nome     | sobrenome | pais     | endereco     | cidade     | cep        | telefone      | email                        |
            | "carlos" | "santos"  | "brasil" | "rua a, 205" | "Brumado"  | "46100000" | "32715158554" | "carloshenrique39@gmail.com" |
            | "mike"   | "butler"  | "eua"    | "rua b, 20"  | "Denver"   | "21584684" | "12548361546" | "mike@gmail.com"             |
            | "john"   | "tompson" | "eua"    | "rua c, 25"  | "Miami"    | "45152587" | "87456952123" | "john@gmail.com"             |
            | "lisa"   | "leslie"  | "eua"    | "rua d, 02"  | "Boston"   | "13584555" | "63856651238" | "lisa@gmail.com"             |
            | "maria"  | "lopes"   | "brasil" | "rua e, 05"  | "Salvador" | "45468621" | "71988568741" | "maria@gmail.com"            |

    
    Scenario: e-mail inválido
        When eu inserir o e-mail "carloshenrique#.com"
        Then sistema exibe a mensagem "Digite um e-mail válido"

    Scenario: cadastrar com campos vazios obrigatórios
        When eu deixar todos os campos vazios
        Then sistema exibe a mensagem "Preencha os campos obrigatórios vazios"