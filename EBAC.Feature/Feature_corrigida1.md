
---

### **Feature: Configurar Produto no EBAC-SHOP**

---

### **Scenario Completo: Seleções de cor, tamanho e quantidade são obrigatórias**

- **Dado que** estou na página do produto  
- **Quando** não seleciono cor, tamanho ou quantidade  
- **Então** deve exibir uma mensagem de erro solicitando a seleção obrigatória

**Objetivo:** Garantir que o sistema exiba um erro quando o usuário não selecionar cor, tamanho ou quantidade ao tentar adicionar um produto ao carrinho.

---

### **Scenario Completo: Limite de 10 produtos por venda**

- **Dado que** estou na página do produto  
- **Quando** tento adicionar mais de 10 unidades de um produto  
- **Então** deve exibir uma mensagem de erro informando que o limite é de 10 produtos por venda

**Objetivo:** Validar que o sistema aplica corretamente o limite de 10 produtos por venda e exibe uma mensagem de erro quando o usuário tentar adicionar mais unidades do que o permitido.

---

### **Scenario Completo: Limpar configurações e retornar ao estado original**

- **Dado que** estou na página do produto com cor, tamanho e quantidade selecionados  
- **Quando** clico no botão "Limpar"  
- **Então** as seleções de cor, tamanho e quantidade devem ser desmarcadas e voltar ao estado original

**Objetivo:** Testar o comportamento do botão "Limpar", verificando se ele desmarcar as seleções de cor, tamanho e quantidade e retornar à configuração original.

---

### **Scenario Simples: Adicionar produto ao carrinho com sucesso**

- **Dado que** estou na página do produto  
- **Quando** seleciono cor, tamanho e quantidade  
- **E** clico no botão "Adicionar ao Carrinho"  
- **Então** o produto deve ser adicionado ao carrinho com sucesso  
- **E** devo ver uma mensagem de confirmação

**Objetivo:** Verificar se o sistema adiciona corretamente o produto ao carrinho quando o usuário escolhe cor, tamanho e quantidade, e exibe a mensagem de confirmação adequada.

---

### **Scenario Tabela: Adicionar diferentes combinações de produtos ao carrinho**

- **Dado que** estou na página do produto  
- **Quando** seleciono as seguintes combinações de cor, tamanho e quantidade:  
  | Cor       | Tamanho | Quantidade |  
  |-----------|---------|------------|  
  | Azul      | M       | 1          |  
  | Preto     | G       | 2          |  
  | Vermelho  | P       | 3          |  
- **E** clico no botão "Adicionar ao Carrinho"  
- **Então** as combinações devem ser adicionadas ao carrinho com sucesso  
- **E** devo ver uma mensagem de confirmação para cada combinação

**Objetivo:** Testar se o sistema consegue adicionar diferentes combinações de cor, tamanho e quantidade ao carrinho corretamente e se o usuário recebe uma mensagem de confirmação para cada item adicionado.

---

### **Observações para a melhoria do comportamento:**

1. **Verificação de obrigatoriedade dos campos:** O sistema deve garantir que o usuário não possa adicionar um produto ao carrinho sem preencher as opções de cor, tamanho e quantidade.
2. **Limite de quantidade:** O sistema deve restringir o usuário a adicionar no máximo 10 unidades de um produto por vez, e fornecer uma mensagem clara quando este limite for excedido.
3. **Limpeza de seleções:** O botão "Limpar" deve retornar todas as seleções de cor, tamanho e quantidade ao estado inicial, facilitando para o usuário recomeçar a configuração do produto.
4. **Adição ao carrinho:** O processo de adicionar o produto ao carrinho deve ser simples e direto, e o sistema deve fornecer um feedback claro de que o produto foi adicionado corretamente. Quando múltiplas combinações forem selecionadas, o feedback deve ser dado para cada uma delas, individualmente.
