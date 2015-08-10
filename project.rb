require_relative "getfunded"

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