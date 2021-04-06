require "capybara/dsl"

class Google_page < SitePrism::Page
  element :campo_pesquisar, ".gNO89b"
  element :input_pesquisar, 'input[class="gLFyf gsfi"]'
  element :resultado_pesquisa, 'a[href="https://pt-br.facebook.com/"]'
end
