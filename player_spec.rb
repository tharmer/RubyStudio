require_relative 'player'


describe Player do

  before do
    $stdout = StringIO.new
    @health = 150
    @player = Player.new("larry", @health)
    #@score = @health + @player.name.length
  end

  it "has a capitalised name" do
    expect(@player.name).to eq 'Larry' 
  end  
  
  it "has an initial health" do
    expect(@health).to eq 150 
  end
  
  it "has a string representation" do
    expect(@player.to_s).to eq "I'm Larry with a health of 150 and a score of 155."
  end
  
  it "computes a score as the sum of its health and length of name" do
    expect(@player.score).to eq 155
  
  end

  it "increases health by 15 when w00ted" do
    @player.w00t
    expect(@player.health).to eq @health + 15
  end
  

  it "decreases health by 10 when blammed" do
  @player.blam
  expect(@player.health).to eq @health - 10
end
end