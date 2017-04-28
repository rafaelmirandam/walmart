#language: pt

Funcionalidade: Pesquisa de produto no Walmart e depois adicionar ao carrinho

  Cenário: Fazer uma pesquisa na página inicial do walmart e depois adicionar um item no carrinho

    Dado que eu estou na página inicial do Walmart
    Quando eu digitar "televisão samsung" na pesquisa
    E clicar no ícone de pesquisa
    E abrir a tela do produto
    E clicar no botão de adicionar ao carrinho
    Então verificar se o item foi adiconado ao carrinho
