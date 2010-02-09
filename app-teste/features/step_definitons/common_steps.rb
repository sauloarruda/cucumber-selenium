Dado /^que acessei a página de (.*)$/ do |pagina|
  @browser.open path_to(pagina)
  @browser.wait_for_page_to_load 10000
end

Quando /^digito "([^\"]*)" no campo "([^\"]*)"$/ do |valor, campo|
  @browser.type field_for(campo), valor
end

Quando /^clico no botão "([^\"]*)"$/ do |botao|
  @browser.click button_for(botao), :wait_for => :page
end

Entao /^vejo o texto "(.*)" na tela$/ do |texto|
  @browser.text?(texto).should be_true
end