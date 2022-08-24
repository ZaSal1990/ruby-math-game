
require './player'

class Game
  attr_accessor :answer, :number_one, :number_two, :player_one, :player_two

 def initialize(player_1, player_2)
  @player_one = player_1
  @player_two = player_2
 end

def update_round_score(player, score, asker)
  player.player_score += score # processes result
  if player.player_score == 0
    puts "#{player.player_name} loses!"
    puts "\n ---GAME OVER--- \n"
    return
  else
  # announcement
  puts "P1: #{@player_one.player_score}/3 P2: #{@player_two.player_score}/3" 
  puts "\n ---NEW TURN--- \n"
  question(asker, player) # swapped for turn taking
  end
end
 
  def question(player, asker)
    @number_one = (rand() * 20).round()
    @number_two = (rand() * 20).round()
    puts "\n"
    p actual_answer = number_one + number_two 
    puts "#{asker.player_name}: What is #{number_one} plus #{number_two}?"
    answer =  gets.chomp.to_i
      if answer == (actual_answer)
        p "#{asker.player_name}: You are correct!"
        update_round_score(player, 0, asker)
      elsif 
        p "#{asker.player_name}: Seriously? No!"
        update_round_score(player, -1, asker)
      end
  end
end  




