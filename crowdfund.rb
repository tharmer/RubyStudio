class Project
  
  attr_reader :amount, :target
  attr_accessor :name
  
  def initialize(name, amount=0, target)
    @name = name
    @amount = amount
    @target = target
  end  

  def add(dollars_in)
    @amount = @amount + dollars_in
    "Project #{@name} got more funds!"
  end  

  def remove(dollars_out)
    @amount = @amount - dollars_out
    "Project #{@name} lost some funds!"
  end

  def needed
    @target - @amount
  end

  def to_s
"Project #{@name} has $#{@amount} in funding towards a goal of $#{@target} and needs $#{needed}."
  end

end


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
  

proj1 = Project.new("LMN", 500, 3000)
proj2= Project.new("XYZ", 25, 75)
proj3= Project.new("BRZ", 250, 750)

projects = GetFunded.new("VC-Friendly Start-Up")
puts projects.title
projects.add_project(proj1)
projects.add_project(proj2)
projects.add_project(proj3)
projects.request_funds


