class Movie
  
  attr_reader :rank 
  attr_accessor :title
  
  def initialize(title, rank=0)
    @title = title.capitalize
    @rank = rank 
    #puts "created a movie object with title #{title} and rank #{rank}" 
  end 
  
  def thumbs_up
    @rank = @rank + 1
  end  
  
  def thumbs_down
    @rank = @rank - 1
  end
  
  def to_s
    "#{@title} has a rank of #{@rank}"
  end
end

if __FILE__ == $0
movie = Movie.new("goonies", 10)
puts movie.title
puts movie.rank
end