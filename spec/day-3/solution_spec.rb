require "#{File.expand_path(File.dirname(__FILE__))}/../../day-3/solution.rb"

RSpec.describe DayThree, '#solution_one' do
  context 'Part One' do
    it '> delivers presents to 2 houses: one at the starting location, and one
  to the east.' do
      daythree = DayThree.new
      daythree.contents = '>'
      expect(daythree.solution_one).to eq 2
    end

    it '^>v< delivers presents to 4 houses in a square, including twice to the
  house at his starting/ending location.' do
      daythree = DayThree.new
      daythree.contents = '^>v<'
      expect(daythree.solution_one).to eq 4
    end

    it '^v^v^v^v^v delivers a bunch of presents to some very lucky children at
  only 2 houses.' do
      daythree = DayThree.new
      daythree.contents = '^v^v^v^v^v'
      expect(daythree.solution_one).to eq 2
    end

    it 'has the correct answer given x input' do
      daythree = DayThree.new
      expect(daythree.solution_one).to eq 2565
    end
  end

  context 'Part Two' do
    it '^v delivers presents to 3 houses, because Santa goes north, and then
  Robo-Santa goes south.' do
      daythree = DayThree.new
      daythree.contents = '^v'
      expect(daythree.solution_two).to eq 3
    end

    it '^>v< now delivers presents to 3 houses, and Santa and Robo-Santa end up
  back where they started.' do
      daythree = DayThree.new
      daythree.contents = '^>v<'
      expect(daythree.solution_two).to eq 3
    end

    it '^v^v^v^v^v now delivers presents to 11 houses, with Santa going one
  direction and Robo-Santa going the other.' do
      daythree = DayThree.new
      daythree.contents = '^v^v^v^v^v'
      expect(daythree.solution_two).to eq 11
    end

    it 'has the correct answer given x input' do
      daythree = DayThree.new
      expect(daythree.solution_two).to eq 2639
    end
  end
end
