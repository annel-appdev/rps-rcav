class ApplicationController < ActionController::Base
  layout("wrapper.html.erb")

  # Add your actions below this line
  # ================================

  def homepage
    render({ :template => "game_templates/rules.html.erb" })
  end

  def play_rock
    #write a ton of code
    #redirect_to("https://www.wikipedia.")
    #render({ :plain => rand(200) })
    #render({ :html => "<h1>Howdy, world!!</h1>".html_safe })

    render({ :template => "game_templates/user_rock.html.erb"  })
  end

  def
    play_paper
    @comp_move = ["Rock", "Paper", "Scissors"].sample 

     if @comp_move == "Rock" 
    @outcome = "won"
     elsif @comp_move == "Paper" 
    @outcome = "tied"
     elsif @comp_move == "Scissors" 
    @outcome = "lost"
     end 
  
     render({ :template => "game_templates/user_paper.html.erb" })
    end

  def
    play_scissors
    @comp_move = ["Rock", "Paper", "Scissors"].sample 

     if @comp_move == "Rock" 
    @outcome = "lost"
     elsif @comp_move == "Paper" 
    @outcome = "won"
     elsif @comp_move == "Scissors" 
    @outcome = "tied"
     end 
  
     render({ :template => "game_templates/user_scissors.html.erb" })
    end
end


  #def
   # play_scissors
    #render({ :template => "game_templates/user_scissors.html.erb" })
  #end
