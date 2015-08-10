class GetFunded
  
  attr_reader :title
  
  def initialize(title)
    @title = title
    @projects = []
  end

  def add_project(a_project)
    @projects << a_project
  end
  
  def request_funds 
        puts "There are #{@projects.size} projects that you could fund:"
  @projects.each do |project|
    puts project
  end
end
end