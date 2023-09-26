class GameController < ApplicationController
  def rock

    @random_move = ["rock","paper","scissors"].sample
    @winner = ""
    if(@random_move == "rock")
    @winner = "We tied!"
    elsif(@random_move == "scissors")
      @winner = "We won!"
    else
      @winner = "We lost!"
    end
      render({:template => "game_templates/rock"})
  end
  def paper
    @random_move = ["rock","paper","scissors"].sample
    @winner = ""
    if(@random_move == "rock")
    @winner = "We won!"
    elsif(@random_move == "scissors")
      @winner = "We lost!"
    else
      @winner = "We tied!"
    end
    render({:template => "game_templates/paper"})
  end 
  def scissors
    @random_move = ["rock","paper","scissors"].sample
    @winner = ""
    if(@random_move == "rock")
    @winner = "We lost!"
    elsif(@random_move == "scissors")
      @winner = "We tied!"
    else
      @winner = "We won!"
    end
    render({:template => "game_templates/scissors"})
  end
  def rules
    render({:template => "game_templates/rules"})
  end
  
end
