class Project
  
  def initialize(name, amount=0, target)
    @name = name
    @amount = amount
    @target = target
  end  

  def add(dollars_in)
    @amount = @amount + dollars_in
    puts "Project #{@name} got more funds!"
  end  

  def remove(dollars_out)
    @amount = @amount - dollars_out
    puts "Project #{@name} lost some funds!"
  end

  def to_s
"Project #{@name} has $#{@amount} in funding towards a goal of $#{@target}."
  end

end

proj1 = Project.new("LMN", 500, 3000)
puts proj1
proj2= Project.new("XYZ", 25, 75)
puts proj2
proj1.remove(15)
proj2.add(25)
puts proj1
puts proj2




