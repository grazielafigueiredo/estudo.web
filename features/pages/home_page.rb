# frozen_string_literal: true

class HomePage
  include Capybara::DSL

  def home
    visit "/"
  end

  def header_login
    find('#span-controlText').click
  end
  
  def button_entrar
    find('#btn-buttonLogin').click
  end

  def cmp_cpf_faker
    find('input[name="username"]').set Faker::CPF.numeric
  end

  def cmp_cpf_invalido(cpf)
    find('input[name="username"]').set cpf
  end

  def icon_success
    find('i[class="icon icon-success"]')
  end
end
