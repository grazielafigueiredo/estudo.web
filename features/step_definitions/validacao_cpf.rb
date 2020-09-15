# frozen_string_literal: true

Dado('que acesso o site Livelo') do
  @home_page.home
end

Quando('clico em entrar') do
  @home_page.header_login
  @home_page.button_entrar
end

Então('o sistema deve validar o CPF inserido') do
  icon = @home_page.icon_success
  expect(icon.visible?).to be true
end

Quando('preencho o campo com {string}') do |cpf|
  @home_page.cmp_cpf(cpf)
end

Então('o sistema deve exibir a {string}') do |mensagem|
  expect(@home_page).to have_content mensagem
end
