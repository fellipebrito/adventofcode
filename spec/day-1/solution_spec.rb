require "#{File.expand_path(File.dirname(__FILE__))}/../../day-1/solution.rb"

RSpec.describe DayOne, '#solution_one' do
  it 'returns the floor santa should take' do
    dayone = DayOne.new
    expect(dayone.solution_one).to eq 74
  end

  it 'returns the floor santa should take' do
    dayone = DayOne.new
    expect(dayone.solution_two).to eq 1795
  end
end
