module NavigationHelpers
  def path_to(page_name)
    "http://cucumber.local" +
    case page_name
    
    when /anúncio/
      '/anuncio'
    when /autenticação/
      '/login'
    
    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
  
  def field_for(field_name)
    case field_name
    when /Ano\/Modelo/
      'ano_modelo'
    else
      field_name
    end
  end
  
  def button_for(button_name)
    case button_name
    when ''
      raise 'Digite um nome para o botão'
    else
      button_name 
    end
  end
  
end

World(NavigationHelpers)
