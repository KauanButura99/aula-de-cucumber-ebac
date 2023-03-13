Feature: Tela de login
  Como aluno do portal da Ebac
  Quero me auntenticar
  Para visualizar minhas notas

  Background:
    Given que eu acesse a página de autenticação do portal Ebac

  Scenario: Autenticação Válida
    When eu digitar o usuário "joao@rbac.com.br"
    And a senha "senha@123"
    Then deve exibir uma mensagem de boas vindas "Olá Joao "

  Scenario: Usuário inexistente
    When eu digitar o usuário "ggto@rbac.com.br"
    And a senha "senha@123"
    Then deve exibir uma mensagem de alertar "Usuário inexistente"

  Scenario: Senha incorreta
    When eu digitar o usuário "joao@rbac.com.br"
    And a senha "senha@1673"
    Then deve exibir uma mensagem de alertar "Senha incorreta"

  Scenario Outline: Scenario Outline name: Aunteticar multiplos usuários
    When eu digitar o <user>
    And a <Password>
    Then Deve exibir <mensage> de sucesso

    Examples:
      | usuário            | senha       | mensagem    |
      | "joao@rbac.com.br  | "teste@123" | "Olá joão"  |
      | "maria@rbac.com.br | "teste@123" | "Olá maria" |
      | "joseo@rbac.com.br | "teste@123" | "Olá jose"  |