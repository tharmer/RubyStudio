
class Player
  
  attr_accessor :health
  
  def initialize(name, health=0)
    @name = name
    @health = health
  end  
    
  def to_s
    "#{@name} has joined the game with a health of #{@health}"
  end  
  
end  


class Game
  
  def initialize(title)
    @title = title
    @players = []
  end
  
  def add_player(new_player)
      @players << new_player
  end
  
  def play
    @players.each do |player|
      puts player
    end
 end
end  


player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play