# Feature: Configurar Produto no EBAC-SHOP

Feature: Configurar Produto no EBAC-SHOP

  # Cenário Completo 1: Seleções de cor, tamanho e quantidade são obrigatórias
  Scenario: Seleções de cor, tamanho e quantidade são obrigatórias
    Dado que estou na página do produto
    Quando não seleciono <cor>, <tamanho> ou <quantidade>
    Então deve exibir uma <mensagem> solicitando a seleção obrigatória

  # Objetivo: Garantir que o sistema exiba um erro quando o usuário não selecionar cor, tamanho ou quantidade ao tentar adicionar um produto ao carrinho.

  # Cenário Completo 2: Limite de 10 produtos por venda
  Scenario: Limite de 10 produtos por venda
    Dado que estou na página do produto
    Quando tento adicionar mais de 10 unidades de um produto
    Então deve exibir uma <mensagem> informando que o limite é de 10 produtos por venda

  # Objetivo: Validar que o sistema aplica corretamente o limite de 10 produtos por venda e exibe uma mensagem de erro quando o usuário tentar adicionar mais unidades do que o permitido.

  # Cenário Completo 3: Limpar configurações e retornar ao estado original
  Scenario: Limpar configurações e retornar ao estado original
    Dado que estou na página do produto com cor, tamanho e quantidade selecionados
    Quando clico no botão "Limpar"
    Então as seleções de <cor>, <tamanho> e <quantidade> devem ser desmarcadas e voltar ao estado original

  # Objetivo: Testar o comportamento do botão "Limpar", verificando se ele desmarcar as seleções de cor, tamanho e quantidade e retornar à configuração original.

  # Cenário Simples 1: Adicionar produto ao carrinho com sucesso
  Scenario: Adicionar produto ao carrinho com sucesso
    Dado que estou na página do produto
    Quando seleciono <cor>, <tamanho> e <quantidade>
    E clico no botão "Adicionar ao Carrinho"
    Então o produto deve ser adicionado ao carrinho com sucesso
    E devo ver uma <mensagem> de confirmação

  # Objetivo: Verificar se o sistema adiciona corretamente o produto ao carrinho quando o usuário escolhe cor, tamanho e quantidade, e exibe a mensagem de confirmação adequada.

  # Esquema do cenário: Adicionar diferentes combinações de produtos ao carrinho
  Scenario Outline: Adicionar diferentes combinações de produtos ao carrinho
    Dado que estou na página do produto
    Quando eu seleciono <cor>, <tamanho> e <quantidade> e clico no botão "Adicionar ao carrinho"
    Então devo visualizar uma <mensagem> de confirmação

    Examples:
      | cor     | tamanho | quantidade | mensagem                    |
      | azul    | M       | 1          | Produto adicionado ao carrinho|
      | preto   | G       | 2          | Produto adicionado ao carrinho|
      | vermelho| P       | 3          | Produto adicionado ao carrinho|

  # Objetivo: Testar se o sistema consegue adicionar diferentes combinações de cor, tamanho e quantidade ao carrinho corretamente e se o usuário recebe uma mensagem de confirmação para cada item adicionado.

# Observações para a melhoria do comportamento:

  # Verificação de obrigatoriedade dos campos
  # O sistema deve garantir que o usuário não possa adicionar um produto ao carrinho sem preencher as opções de cor, tamanho e quantidade.

  # Limite de quantidade
  # O sistema deve restringir o usuário a adicionar no máximo 10 unidades de um produto por vez, e fornecer uma mensagem clara quando este limite for excedido.

  # Limpeza de seleções
  # O botão "Limpar" deve retornar todas as seleções de cor, tamanho e quantidade ao estado inicial, facilitando para o usuário recomeçar a configuração do produto.

  # Adição ao carrinho
  # O processo de adicionar o produto ao carrinho deve ser simples e direto, e o sistema deve fornecer um feedback claro de que o produto foi adicionado corretamente. Quando múltiplas combinações forem selecionadas, o feedback deve ser dado para cada uma delas, individualmente.
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Alterações feitas:

Esquema do cenário agora é apresentado antes de cada Scenario Outline e com a definição do comportamento esperada.

As variáveis <cor>, <tamanho>, <quantidade> e <mensagem> estão entre os sinais de < > conforme sua orientação.

A tabela de Examples está formatada para mostrar as combinações e a respectiva mensagem de confirmação para cada caso.



