class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================

  def homepage
    #Pull the playehomepage rock website
    render({ :template => "game_templates/rules_html".html_safe })
  
  end

  def play_rock
    #render something
    render({ :template => "game_templates/play_rock".html_safe })
  end
end
