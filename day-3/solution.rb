# http://adventofcode.com/day/3
class DayThree
  attr_accessor :contents

  def initialize
    file = File.open("#{File.expand_path(File.dirname(__FILE__))}/input.txt",
                     'r')
    @contents = file.read.strip
    file.close
  end

  def move(pos, m)
    case m
    when'>'
      [pos[0] + 1, pos[1]]
    when'<'
      [pos[0] - 1, pos[1]]
    when'^'
      [pos[0], pos[1] + 1]
    when'v'
      [pos[0], pos[1] - 1]
    end
  end

  def all_moves(actor_coordinates)
    pos = [0, 0]
    ([pos] + actor_coordinates.map { |m| pos = move pos, m })
  end

  def solution_one
    santa = @contents.split(//)
    all_moves(santa).uniq.count
  end

  def solution_two
    santa, robo = @contents.split(//).partition.with_index { |_, i| i.even? }
    (all_moves(santa) + all_moves(robo)).uniq.count
  end
end
