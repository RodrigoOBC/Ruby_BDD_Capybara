Dado("que estou na pagina do google.") do
  visit "https://www.google.com/"
  @google_pagina = Google_page.new
end

Quando("digito {string} no campo de pesquisa.") do |string|
  @google_pagina.input_pesquisar.set string
end

Quando("clico no botão \"pesquisar\".") do
  @google_pagina.campo_pesquisar.click
end

Então("serão exibidos resultados de busca do {string}.") do |string|
  expect(@google_pagina.resultado_pesquisa).to have_content string
end
