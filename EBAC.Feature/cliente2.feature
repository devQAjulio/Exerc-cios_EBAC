Feature: Autenticação de usuário na EBAC-SHOP

  Scenario: Login bem-sucedido com dados válidos
    Given que estou na página de login
    When insiro um "usuário" e "senha" válidos
    And clico no botão "Entrar"
    Then devo ser direcionado para a tela de checkout

  Scenario: Falha no login com dados inválidos
    Given que estou na página de login
    When insiro um "usuário" ou "senha" inválidos
    And clico no botão "Entrar"
    Then deve exibir uma mensagem de alerta "Usuário ou senha inválidos"
   
  Scenario: Tentativa de login com campos vazios
  Given que estou na página de login
  When não preencho os campos "usuário" e "senha"
  And clico no botão "Entrar"
  Then deve exibir uma mensagem de erro "Por favor, preencha todos os campos"

  Scenario: Recuperar senha de usuário
  Given que estou na página de login
  When clico no link "Esqueci minha senha"
  And insiro meu "e-mail" registrado
  Then devo receber um e-mail com instruções de recuperação de senha
  And uma mensagem de confirmação "Um e-mail foi enviado com instruções para redefinir sua senha" deve ser exibida




