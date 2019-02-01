class Triangle
  attr_accessor :sides
  def initialize(side_1, side_2, side_3)
    @sides = [side_1, side_2, side_3]
    if sides.any? {|side| side <= 0 || (@sides - [side]).inject(0, :+) <= side }
      raise TriangleError
      
  end
  class TriangleError < StandardError

  end
end
