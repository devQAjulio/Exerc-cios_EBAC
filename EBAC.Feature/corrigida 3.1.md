# Feature: Concluir cadastro de cliente na EBAC-SHOP

Feature: Concluir cadastro de cliente na EBAC-SHOP

  # Esquema do cenário: Cadastro de usuário com dados válidos e inválidos
  Scenario Outline: Cadastro de usuário com dados válidos e inválidos
    Dado que estou na página de cadastro
    Quando preencho os campos obrigatórios:
      | Nome     | Sobrenome | E-mail               | Senha   |
      | <Nome>   | <Sobrenome>| <E-mail>             | <Senha> |
    E clico no botão "Cadastrar"
    Então o sistema deve exibir a <mensagem>

    Examples: Cadastro de usuário com diferentes casos
      | Nome       | Sobrenome | E-mail                  | Senha   | mensagem                                    |
      | João       | Silva     | joao.silva@email.com     | 123456  | concluir o cadastro com sucesso             |
      | Maria      | Souza     | maria.souza@email        | 123456  | exibir uma mensagem de erro "Formato de e-mail inválido" |
      | Maria      | Souza     | maria.souza@email.com    | 123456  | concluir o cadastro com sucesso             |
      | Souza      |           | maria.souza@email.com    | 123456  | exibir uma mensagem de erro "Preencha todos os campos obrigatórios" |
      | João       |           | joao.silva@email.com     | 123456  | exibir uma mensagem de erro "Preencha todos os campos obrigatórios" |
      | João       | Silva     | joao.silva@email.com     |         | exibir uma mensagem de erro "Preencha todos os campos obrigatórios" |
      | João       | Silva     | joao.silva@com          | 123456  | exibir uma mensagem de erro "Formato de e-mail inválido" |
      | João       | Silva     | joao@silva..com         | 123456  | exibir uma mensagem de erro "Formato de e-mail inválido" |
      | João@Silva | Silva     | joao.silva@email.com     | 123456  | exibir uma mensagem de erro "Nome contém caracteres inválidos" |
      | João       | Silva@123 | joao.silva@email.com     | 123456  | exibir uma mensagem de erro "Sobrenome contém caracteres inválidos" |
      | !João      | Silva     | joao.silva@email.com     | 123456  | exibir uma mensagem de erro "Nome contém caracteres inválidos" |
      | João       | Silva     | joao.silva@email..com    | 123456  | exibir uma mensagem de erro "Formato de e-mail inválido" |

# Explicação dos Casos de Teste:

  # Caso Válido (João Silva):
  # - Nome, sobrenome, e-mail e senha preenchidos corretamente.
  # - Resultado esperado: O cadastro deve ser concluído com sucesso.

  # Formato de E-mail Inválido (Maria Souza):
  # - E-mail com formato incorreto (falta o domínio ou o "@" ausente).
  # - Resultado esperado: O sistema deve exibir uma mensagem de erro "Formato de e-mail inválido".

  # Campos em Branco (Nome em branco):
  # - Sobrenome, e-mail e senha preenchidos corretamente, mas o campo Nome está vazio.
  # - Resultado esperado: O sistema deve exibir uma mensagem de erro "Preencha todos os campos obrigatórios".

  # Campos em Branco (Senha em branco):
  # - Nome, sobrenome e e-mail preenchidos corretamente, mas a senha está vazia.
  # - Resultado esperado: O sistema deve exibir uma mensagem de erro "Preencha todos os campos obrigatórios".

  # Formato de E-mail Inválido (E-mail com domínio incorreto):
  # - O e-mail possui um formato de domínio incorreto (ex: joao.silva@com).
  # - Resultado esperado: O sistema deve exibir uma mensagem de erro "Formato de e-mail inválido".

  # E-mail com caracteres inválidos (joao@silva..com):
  # - O e-mail contém um formato inválido devido a um ponto extra antes do domínio (ex: joao@silva..com).
  # - Resultado esperado: O sistema deve exibir uma mensagem de erro "Formato de e-mail inválido".

  # Nome com caracteres especiais (João@Silva):
  # - O campo Nome contém caracteres especiais (@), o que não é permitido.
  # - Resultado esperado: O sistema deve exibir uma mensagem de erro "Nome contém caracteres inválidos".

  # Sobrenome com números (Silva123):
  # - O campo Sobrenome contém números, o que não é permitido.
  # - Resultado esperado: O sistema deve exibir uma mensagem de erro "Sobrenome contém caracteres inválidos".

  # Nome com caractere especial (!João):
  # - O nome contém um caractere especial (ex: !João), o que é inválido.
  # - Resultado esperado: O sistema deve exibir uma mensagem de erro "Nome contém caracteres inválidos".
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Ajustes Feitos:

Esquema do cenário: O esquema do cenário é apresentado antes do Scenario Outline, com os parâmetros <Nome>, <Sobrenome>, <E-mail>, <Senha> e <mensagem> entre os sinais de < >.

Tabela de Exemplos: Os exemplos agora incluem os parâmetros entre < > e o resultado esperado de cada teste.

Explicação dos casos de teste: A explicação detalhada dos casos de teste foi mantida, com a descrição clara de cada situação que deve ser testada.