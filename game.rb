require_relative "player"
require_relative "die"
require_relative "gam_turn"
require_relative "treasure_trove"  

class Game
  
  attr_reader :title
  
  def initialize (title)
    @title = title
    @players = []
  end
  
  def add_player(a_player)
    @players << a_player
  end
  
  def play(rounds)
    
    
    puts "There are #{@players.size} players in #{@title}: "
      @players.each do |player|
        puts player
      end
      
      def print_name_and_health(player)
        puts "#{player.name} (#{player.health})"
      end

      treasures = TreasureTrove::TREASURES
      puts
      puts "There are #{treasures.size} treasures"
      treasures.each {|treasure| puts "A #{treasure.name} is worth #{treasure.points} points"}


      def print_stats
        puts "\n#{@title} Statistics:"

        strong_players, wimpy_players = @players.partition { |player| player.strong? }

        puts "#{strong_players.size} strong players:"
        strong_players.each do |player|
          print_name_and_health(player)
        end

        puts "#{wimpy_players.size} wimpy players:"
        wimpy_players.each do |player|
          print_name_and_health(player)
        end
      end
        
        

        puts "\n#{@title} High Scores:"
        @players.sort.each do |player|
          formatted_name = player.name.ljust(20, '.')
          puts "#{formatted_name} #{player.score}"
        end

      
      
      1.upto(rounds) do |round|
        puts "\nRound #{round}:"
      
    @players.each do |player|
      GameTurn.take_turn(player)
      puts player
      end
     end
    end
  end  
