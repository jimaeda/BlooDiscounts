Dado("que eu acesso o cadastro de recompensas") do
  visit 'http://localhost:3000/rewards/new'
end

#clicar no botão cadastrar
Então("devo clicar em create reward") do
  click_button "Create Reward"
end

#Cadastro com sucesso
Então("devo ir para a tela com os dados cadastrados e a mensagem {string}") do |string|
	expect(page).to have_content 'Recompensa cadastrada com sucesso.'
end

#nome faltando 
Quando("eu digitar nada, {string}, {int} e {int}") do |categoria, quantidade, custo|
  find('input[id=reward_category]').set categoria
  find('input[id=reward_quantity]').set quantidade
  find('input[id=reward_cost]').set custo
end

#Categoria faltando 
Quando("eu digitar {string}, nada, {int} e {int}") do |nome, quantidade, custo|
  find('input[id=reward_name]').set nome
  find('input[id=reward_quantity]').set quantidade
  find('input[id=reward_cost]').set custo
end

#não houve cadastro
Então("devo continuar na mesma tela") do
  expect(page).to have_content 'Cadastro de Recompensa'    
end

#Qtd faltando
Quando("eu digitar {string}, {string}, nada e {int}") do |nome, categoria, custo|
  find('input[id=reward_category]').set categoria
  find('input[id=reward_name]').set nome
  find('input[id=reward_cost]').set custo
end

#Valor faltando
Quando("eu digitar {string}, {string}, {int} e nada") do |nome, categoria, quantidade|
  find('input[id=reward_category]').set categoria
  find('input[id=reward_name]').set nome
  find('input[id=reward_quantity]').set quantidade
end

#Caso perfeito
Quando("eu digitar {string}, {string}, {int} e {int}") do |nome, categoria, quantidade, custo|
  find('input[id=reward_category]').set categoria
  find('input[id=reward_name]').set nome
  find('input[id=reward_quantity]').set quantidade
  find('input[id=reward_cost]').set custo

end
