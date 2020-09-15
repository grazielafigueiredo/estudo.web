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

  def cmp_cpf(cpf)
    find('input[name="username"]').set cpf
  end

  def icon_success
    find('i[class="icon icon-success"]')
  end
end
