module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name
    when /início/
      '/'
    else
      '/' + page_name
    end
  end
  
  
  def field_for(field_name)
    case field_name
    when ''
      raise "Valor em branco"
    else
      field_name
    end
  end
  
  def button_for(button_name)
    case button_name
    when ''
      raise "Valor em branco"
    else
      'commit'
    end
  end
  
end

World(NavigationHelpers)
