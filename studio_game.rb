class Player
  
  attr_reader :health
  attr_accessor :name
  
  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end  
  
  def score
    @health + @name.length
  end
  
  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}."
  end
  
  def w00t
    @health = @health + 15
    puts "#{@name} got w00ted!"
  end
  
  def blam
    @health = @health - 10
    puts "#{@name} got blammed!"
  end
  
end

class Game
  
  attr_reader :title
  
  def initialize (title)
    @title = title
    @players = []
  end
  
  def add_player(a_player)
    @players << a_player
  end
  
  def play
    puts "There are #{@players.size} players in #{@title}: "
      @players.each do |player|
        puts player
      end
    @players.each do |player|
      player.blam
      player.w00t
      player.w00t
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

player4 = Player.new("Alvin", 30)
player5 = Player.new("Theodore", 10)
player6 = Player.new("Simon", 20)

knuckleheads = Game.new("Chipmunks")
knuckleheads.add_player(player4)
knuckleheads.add_player(player5)
knuckleheads.add_player(player6)
knuckleheads.play



