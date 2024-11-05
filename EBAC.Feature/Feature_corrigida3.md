
---

### **Feature: Concluir cadastro de cliente na EBAC-SHOP**

---

### **Scenario Outline: Cadastro de usuário com dados válidos e inválidos**

- **Dado que** estou na página de cadastro  
- **Quando** preencho os campos obrigatórios:  
  | Nome        | Sobrenome   | E-mail               | Senha   |  
  | <Nome>      | <Sobrenome> | <E-mail>             | <Senha> |  
- **E** clico no botão "Cadastrar"  
- **Então** o sistema deve <Resultado>  

---

### **Examples: Cadastro de usuário com diferentes casos**

| Nome           | Sobrenome      | E-mail                        | Senha      | Resultado                                                        |
|----------------|----------------|-------------------------------|------------|------------------------------------------------------------------|
| João           | Silva          | joao.silva@email.com           | 123456     | concluir o cadastro com sucesso                                  |
| Maria          | Souza          | maria.souza@email              | 123456     | exibir uma mensagem de erro "Formato de e-mail inválido"         |
| Maria          | Souza          | maria.souza@email.com          | 123456     | concluir o cadastro com sucesso                                  |
|                | Souza          | maria.souza@email.com          | 123456     | exibir uma mensagem de erro "Preencha todos os campos obrigatórios" |
| João           |                | joao.silva@email.com           | 123456     | exibir uma mensagem de erro "Preencha todos os campos obrigatórios" |
| João           | Silva          | joao.silva@email.com           |            | exibir uma mensagem de erro "Preencha todos os campos obrigatórios" |
| João           | Silva          | joao.silva@com                | 123456     | exibir uma mensagem de erro "Formato de e-mail inválido"         |
| João           | Silva          | joao@silva..com                | 123456     | exibir uma mensagem de erro "Formato de e-mail inválido"         |
| João@Silva     | Silva          | joao.silva@email.com           | 123456     | exibir uma mensagem de erro "Nome contém caracteres inválidos"   |
| João           | Silva@123      | joao.silva@email.com           | 123456     | exibir uma mensagem de erro "Sobrenome contém caracteres inválidos" |
| !João          | Silva          | joao.silva@email.com           | 123456     | exibir uma mensagem de erro "Nome contém caracteres inválidos"   |
| João           | Silva          | joao.silva@email..com          | 123456     | exibir uma mensagem de erro "Formato de e-mail inválido"         |

---

### **Explicação dos Casos de Teste:**

1. **Caso Válido (João Silva):**
   - Nome, sobrenome, e-mail e senha preenchidos corretamente.
   - Resultado esperado: O cadastro deve ser concluído com sucesso.

2. **Formato de E-mail Inválido (Maria Souza):**
   - E-mail com formato incorreto (falta o domínio ou o "@" ausente).
   - Resultado esperado: O sistema deve exibir uma mensagem de erro "Formato de e-mail inválido".

3. **Campos em Branco (Nome em branco):**
   - Sobrenome, e-mail e senha preenchidos corretamente, mas o campo Nome está vazio.
   - Resultado esperado: O sistema deve exibir uma mensagem de erro "Preencha todos os campos obrigatórios".

4. **Campos em Branco (Senha em branco):**
   - Nome, sobrenome e e-mail preenchidos corretamente, mas a senha está vazia.
   - Resultado esperado: O sistema deve exibir uma mensagem de erro "Preencha todos os campos obrigatórios".

5. **Formato de E-mail Inválido (E-mail com domínio incorreto):**
   - O e-mail possui um formato de domínio incorreto (ex: `joao.silva@com`).
   - Resultado esperado: O sistema deve exibir uma mensagem de erro "Formato de e-mail inválido".

6. **E-mail com caracteres inválidos (joao@silva..com):**
   - O e-mail contém um formato inválido devido a um ponto extra antes do domínio (ex: `joao@silva..com`).
   - Resultado esperado: O sistema deve exibir uma mensagem de erro "Formato de e-mail inválido".

7. **Nome com caracteres especiais (João@Silva):**
   - O campo Nome contém caracteres especiais (`@`), o que não é permitido.
   - Resultado esperado: O sistema deve exibir uma mensagem de erro "Nome contém caracteres inválidos".

8. **Sobrenome com números (Silva123):**
   - O campo Sobrenome contém números, o que não é permitido.
   - Resultado esperado: O sistema deve exibir uma mensagem de erro "Sobrenome contém caracteres inválidos".

9. **Nome com caractere especial (!João):**
   - O nome contém um caractere especial (ex: `!João`), o que é inválido.
   - Resultado esperado: O sistema deve exibir uma mensagem de erro "Nome contém caracteres inválidos".

---

### **Objetivos dos Cenários:**

1. **Cobertura de Formatos de Entrada:** Variar os tipos de entrada (e-mails válidos, inválidos, campos obrigatórios ausentes, caracteres especiais, etc.) para verificar se o sistema lida corretamente com todos os casos de falha esperados.
  
2. **Validação de Campos Obrigatórios:** Garantir que o sistema valide se todos os campos obrigatórios estão preenchidos e exiba mensagens de erro adequadas quando algum campo obrigatório estiver em branco.

3. **Validação de Formatos:** Verificar se o sistema valida corretamente o formato de e-mail, impedindo entradas inválidas (por exemplo, e-mails sem "@" ou com caracteres especiais não permitidos).

---

Se precisar de mais ajustes ou tiver mais orientações, é só avisar!
