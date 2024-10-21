Feature: Concluir cadastro de cliente na EBAC-SHOP

  Scenario Outline: Cadastro de usuário com dados válidos e inválidos
    Given que estou na página de cadastro
    When preencho os campos obrigatórios:
      | Nome         | Sobrenome  | E-mail               | Senha   |
      | <Nome>       | <Sobrenome>| <E-mail>             | <Senha> |
    And clico no botão "Cadastrar"
    Then o sistema deve <Resultado>

  Examples: Cadastro de usuário com diferentes casos
    | Nome      | Sobrenome | E-mail              | Senha     | Resultado                                                   |
    | João      | Silva     | joao.silva@email.com| 123456    | concluir o cadastro com sucesso                              |
    | Maria     | Souza     | maria.souza@email   | 123456    | exibir uma mensagem de erro "Formato de e-mail inválido"      |
    |           | Souza     | maria.souza@email.com| 123456   | exibir uma mensagem de erro "Preencha todos os campos obrigatórios" |
    | João      |           | joao.silva@email.com| 123456    | exibir uma mensagem de erro "Preencha todos os campos obrigatórios" |
    | João      | Silva     |                     | 123456    | exibir uma mensagem de erro "Preencha todos os campos obrigatórios" |



Explicação:

Scenario Outline permite testar diferentes combinações de dados usando uma tabela.

A tabela de exemplos contém casos com dados válidos e inválidos:

O primeiro exemplo é um caso válido.

Os outros exemplos são casos inválidos que cobrem email no formato incorreto e campos vazios, conforme os critérios de aceitação.

Esses exemplos testam o fluxo completo do cadastro e a validação dos campos obrigatórios.