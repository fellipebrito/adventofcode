require "#{File.expand_path(File.dirname(__FILE__))}/../../day-2/solution.rb"

RSpec.describe DayTwo, '#solution_one' do
  it 'A present with dimensions 2x3x4 requires 2*6 + 2*12 + 2*8 = 52 square
  feet of wrapping paper plus 6 square feet of slack, for a total of 58
  square feet.' do
    daytwo = DayTwo.new
    daytwo.contents = ['2x3x4']
    expect(daytwo.solution_one).to eq 58
  end

  it 'A present with dimensions 1x1x10 requires 2*1 + 2*10 + 2*10 = 42 square
  feet of wrapping paper plus 1 square foot of slack, for a total of 43
  square feet.' do
    daytwo = DayTwo.new
    daytwo.contents = ['1x1x10']
    expect(daytwo.solution_one).to eq 43
  end

  it 'has the correct answer given x input' do
    daytwo = DayTwo.new
    expect(daytwo.solution_one).to eq 1_586_300
  end

  it 'A present with dimensions 2x3x4 requires 2+2+3+3 = 10 feet of ribbon to
  wrap the present plus 2*3*4 = 24 feet of ribbon for the bow, for a total of
  34 feet.' do
    daytwo = DayTwo.new
    daytwo.contents = ['2x3x4']
    expect(daytwo.solution_two).to eq 34
  end

  it 'A present with dimensions 1x1x10 requires 1+1+1+1 = 4 feet of ribbon to
  wrap the present plus 1*1*10 = 10 feet of ribbon for the bow, for a total of
  14 feet.' do
    daytwo = DayTwo.new
    daytwo.contents = ['1x1x10']
    expect(daytwo.solution_two).to eq 14
  end

  it 'has the correct answer given x input' do
    daytwo = DayTwo.new
    expect(daytwo.solution_two).to eq 3_737_498
  end
end
