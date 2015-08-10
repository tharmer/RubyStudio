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

if __FILE__ == $0
player = Player.new("moe")
puts player.name
puts player.health
player.w00t
puts player.health
player.blam
puts player.health
end