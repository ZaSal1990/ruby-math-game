require './game'

class Player 

  attr_accessor :player_name, :player_score

  def initialize(name)
    self.player_name = name
    self.player_score = 3
  end
  
end