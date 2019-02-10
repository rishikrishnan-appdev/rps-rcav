class GameController < ApplicationController
    def user_plays_rock
        comp_move = ["rock", "paper", "scissors"].sample
        if comp_move == "rock"
            result = "tied"
        elsif comp_move == "paper"
            result = "lost"
        elsif comp_move == "scissors"
            result = "won"
        end    
            
        render(
            {
            :template => "game_templates/play_rock.html.erb",
            :locals => {
              :computer_move => comp_move,
              :outcome => result
                }
            }
        )
    end
    
    def user_plays_paper
        comp_move = ["rock", "paper", "scissors"].sample
        if comp_move == "rock"
            result = "won"
        elsif comp_move == "paper"
            result = "tied"
        elsif comp_move == "scissors"
            result = "lost"
        end  
        render(
            {
            :template => "game_templates/play_paper.html.erb",
            :locals => {
              :computer_move => comp_move,
              :outcome => result
                }
            }
        )
    end
    
    def user_plays_scissors
        comp_move = ["rock", "paper", "scissors"].sample
        if comp_move == "rock"
            result = "lost"
        elsif comp_move == "paper"
            result = "won"
        elsif comp_move == "scissors"
            result = "tied"
        end
        
        render(
            {
            :template => "game_templates/play_scissors.html.erb",
            :locals => {
              :computer_move => comp_move,
              :outcome => result
                }
            }
        )
    end
end