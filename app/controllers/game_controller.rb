class GameController < ApplicationController
  def rock

    @random_move = ["rock","paper","scissors"].sample
      render({:template => "game_templates/play_rock"})
  end
  def paper

  end 
  def scissors
  end
  def rules
  end
  
end
