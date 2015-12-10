# http://adventofcode.com/day/1
class DayOne
  def initialize
    file = File.open("#{File.expand_path(File.dirname(__FILE__))}/input.txt",
                     'r')
    @contents = file.read.strip.split(//)
    file.close
  end

  # To what floor do the instructions take Santa?
  def solution_one
    @contents.map { |x| x == '(' ? 1 : -1 }.reduce(:+)
  end

  # What is the position of the character that causes Santa
  # to first enter the basement?
  def solution_two
    @x = 0
    @contents.map { |x| x == '(' ? 1 : -1 }.each_with_index do |i, index|
      @x += i

      if @x == -1
        @position = index + 1
        break
      end
    end

    @position
  end
end
