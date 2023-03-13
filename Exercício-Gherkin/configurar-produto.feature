Feature:Configuração do produto
  Como cliente da Ebac-Shop
  Quero configurar meu produto de acordo com meu tamanho e gesto
  e escolher a quantidade
  Para depois inserir no carrinho

  Scenario:Configuração com sucesso
    Given que eu posso configurar o meu produto
    When eu colocar o tamanho M
    And colocar 2 peças de roupas
    Then deve colocar no carrinho

