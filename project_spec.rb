require_relative 'project'

describe Project do

  before do
    
    @amount = 0
    @target = 1000
    @project = Project.new("ABC", @amount, @target)
    
    
  end  


  it "has an initial target amount" do    
    expect(@project.target).to eq 1000
  end  
  
  it "computes the outstanding as target funding amount minus the funding amount" do
    expect(@project.needed).to eq 1000 
  end
  
  it "increases funds by 25 when funds are added" do
    @project.add
    expect(@project.amount).to eq 25
  end
  
  it "decreases funds by 15 when funds are removed" do
    @project.remove
    expect(@project.amount).to eq -15
  end
  
  it "has a default value of 0 for funding amount" do
    expect(@project.amount).to eq 0
  end
  
end