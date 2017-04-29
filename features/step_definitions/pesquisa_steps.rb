Dado(/^que eu estou na página inicial do Walmart$/) do
  visit '/'
end

Quando(/^eu digitar "([^"]*)" na pesquisa$/) do |textoPesquisa|
  fill_in 'suggestion-search', with: textoPesquisa
end

E(/^clicar no ícone de pesquisa$/) do
  all(:css, '.search-icon')[0].click
end

E(/^abrir a tela do produto$/) do
  all(:css, '.card.zoom-out')[0].click
end

E(/^clicar no botão de adicionar ao carrinho$/) do
  find(:css, '.button-success.button-pill.right.buy-button.buy-button-product.fluid').click
  @produto = all(:css, '.product-name')[0].text
  click_button 'navegaCarrinho'
end

Então(/^verificar se o item foi adiconado ao carrinho$/) do
  find(:css, '.topbar-buttons.open-link.cart-link').click
  if (expect(page).to have_content @produto)
    puts 'Produto adicionado ao carrinho com sucesso'
  else
    puts 'Erro ao adicionar produto'
  end
end
