Dado /^que cliquei no link "([^\"]*)"$/ do |link|
  @browser.click "link=#{link}", :wait_for => :page
end

Dado /^que acessei a página de (.*)$/ do |pagina|
  @browser.open path_to(pagina)
  @browser.wait_for_page_to_load 10000
end

Quando /^digito "([^\"]*)" no campo "([^\"]*)"$/ do |valor, campo|
  @browser.type field_for(campo), valor
end

Quando /^digito no campo "([^\"]*)" o texto:$/ do |campo, valor|
  @browser.type field_for(campo), valor
end

Quando /^escolho a opção "([^\"]*)" no campo "([^\"]*)"$/ do |valor, campo|
  @browser.select field_for(campo), valor
end

Quando /^digito no editor rico do campo "([^\"]*)" o texto:$/ do |campo, valor|
  frame = field_for(campo)
  @browser.select_frame(frame) 
  @browser.wait_for_frame_to_load(frame, 30000) unless @browser.is_element_present("//html/body/table/tbody/tr[2]/td/iframe/")
  @browser.select_frame("//html/body/table/tbody/tr[2]/td/iframe/");
  @browser.type("//html/body", valor);
  @browser.select_window("null");
end

Quando /^clico no botão "([^\"]*)"$/ do |botao|
  @browser.click button_for(botao), :wait_for => :page
end

Quando /^anexo o arquivo "([^\"]*)" no campo "([^\"]*)"$/ do |arquivo, campo|
  @browser.attach_file field_for(campo), arquivo
end

Entao /^vejo o texto "(.*)" na tela$/ do |texto|
  @browser.text?(texto).should be_true
end

Entao /^não vejo o texto "(.*)" na tela$/ do |texto|
  @browser.text?(texto).should be_false
end