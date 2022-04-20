class ApplicationController < ActionController::Base
  layout("header.erb")

  # Add your actions below this line
  # ================================

  def homepage
    #Pull the playehomepage rock website
    render({ :template => "game_templates/rules_html".html_safe })
  
  end

  def play_rock
    @comp_move = ["rock", "paper", "scissors"].sample
    if @comp_move == "rock"
      @output = "tied"
    elsif  @comp_move == "scissors"
      @output = "won"
    elsif  @comp_move == "paper"
      @output = "lost"
    end    
      render({ :template => "game_templates/play_rock".html_safe })
  end

  def play_scissors
    @comp_move = ["rock", "paper", "scissors"].sample
    if @comp_move == "rock"
      @output = "lost"
    elsif  @comp_move == "scissors"
      @output = "tied"
    elsif  @comp_move == "paper"
      @output = "won"
    end    
      render({ :template => "game_templates/play_scissors".html_safe })
  end

  def play_paper
    @comp_move = ["rock", "paper", "scissors"].sample
    if @comp_move == "rock"
      @output = "won"
    elsif  @comp_move == "scissors"
      @output = "lost"
    elsif  @comp_move == "paper"
      @output = "tied"
    end    
      render({ :template => "game_templates/play_paper".html_safe })
  end


end
