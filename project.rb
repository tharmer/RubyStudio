require_relative "getfunded"

class Project
  
  attr_reader :amount, :target
  attr_accessor :name
  
  def initialize(name, amount=0, target)
    @name = name
    @amount = amount
    @target = target
  end  

  def add
    @amount = @amount + 25
    "Project #{@name} got more funds!"
  end  

  def remove
    @amount = @amount - 15
    "Project #{@name} lost some funds!"
  end

  def needed
    @target - @amount
  end

  def to_s
"Project #{@name} has $#{@amount} in funding towards a goal of $#{@target} and needs $#{needed}."
  end

end