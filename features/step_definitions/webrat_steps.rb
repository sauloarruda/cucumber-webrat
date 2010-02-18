require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

# Commonly used webrat steps
# http://github.com/brynary/webrat

Given /^Debug$/ do
  puts response_body
  filepath = '/tmp/webrat_debug.html'
  File.open(filepath, "w") do |file|
    file.puts response_body
  end
  raise "Debugged! Current URL: #{current_url}\nResponse saved: #{filepath}"
end

Given /^que(?: eu)* estou na página(?: de) (.+)$/ do |page_name|
  visit path_to(page_name)
end


When /^clico no botão "([^\"]*)"$/ do |button|
  click_button(button_for(button))
end

When /^digito "([^\"]*)" no campo "([^\"]*)"$/ do |value, field|
  fill_in(field_for(field), :with => value) 
end

When /^escolho "([^\"]*)" no campo "([^\"]*)"$/ do |value, field|
  select(value, :from => field_for(field)) 
end

When /^escolho o arquivo "([^\"]*)" para o campo "([^\"]*)"$/ do |path, field|
  attach_file(field_for(field), path)
end

Then /^vejo o texto "(.*)" na tela$/ do |text|
  assert !!(response_body =~ /#{Regexp.escape text}/m), response_body
end

Then /^recebo o aviso "([^\"]*)"$/ do |alert|
  pending # express the regexp above with the code you wish you had
end
