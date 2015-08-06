class Player
  
  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end  
  
  
  def to_s
    "I'm #{@name} with a health of #{@health}."
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

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)
puts player1
puts player2
puts player3
player3.blam
puts player3
player3.w00t
puts player3