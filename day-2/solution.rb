# http://adventofcode.com/day/2
class DayTwo
  attr_accessor :contents

  def initialize
    file = File.open("#{File.expand_path(File.dirname(__FILE__))}/input.txt",
                     'r')
    @contents = file.read.strip.split("\n")
    file.close
  end

  def required_paper(dimensions)
    l, w, h = dimensions.split('x').map(&:to_i)
    d = [(2 * l * w), (2 * w * h), (2 * h * l)]
    d.reduce(:+) + (d.min / 2)
  end

  def solution_one
    @contents.map { |x| required_paper x }.reduce(:+)
  end

  def required_ribbon(dimensions)
    l, w, h = dimensions.split('x').map(&:to_i)
    (l + l + w + w + h + h - 2 * ([l, w, h].max)) + l * w * h
  end

  def solution_two
    @contents.map { |x| required_ribbon x }.reduce(:+)
  end
end
