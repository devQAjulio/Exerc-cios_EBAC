Feature : Configurar Produto no EBAC-SHOP

  Scenario Completo: Seleções de cor, tamanho e quantidade são obrigatórias
    Given que estou na página do produto
    When não seleciono cor, tamanho ou quantidade
    Then deve exibir uma mensagem de erro solicitando a seleção obrigatória

  Scenario Completo: Limite de 10 produtos por venda
    Given que estou na página do produto
    When tento adicionar mais de 10 unidades de um produto
    Then deve exibir uma mensagem de erro informando que o limite é de 10 produtos por venda

  Scenario Completo: Limpar configurações e retornar ao estado original
    Given que estou na página do produto com cor, tamanho e quantidade selecionados
    When clico no botão "Limpar"
    Then as seleções de cor, tamanho e quantidade devem ser desmarcadas e voltar ao estado original



  Scenario Simples: Adicionar produto ao carrinho com sucesso
  Given que estou na página do produto
  When seleciono cor, tamanho e quantidade
  And clico no botão "Adicionar ao Carrinho"
  Then o produto deve ser adicionado ao carrinho com sucesso
  And devo ver uma mensagem de confirmação



  Scenario Tabela: Adicionar diferentes combinações de produtos ao carrinho
  Given que estou na página do produto
  When seleciono as seguintes combinações de cor, tamanho e quantidade:
    | Cor    | Tamanho | Quantidade |
    | Azul   | M       | 1          |
    | Preto  | G       | 2          |
    | Vermelho | P      | 3          |
  And clico no botão "Adicionar ao Carrinho"
  Then as combinações devem ser adicionadas ao carrinho com sucesso
  And devo ver uma mensagem de confirmação para cada combinação

