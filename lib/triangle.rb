class Triangle
  attr_accessor :sides
  def initialize(side_1, side_2, side_3)
    @sides = [side_1, side_2, side_3]
    if sides.any? {|side| side <= 0 || (@sides - [side]).inject(0, :+) <= side }
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    else
      
    end
  end
  class TriangleError < StandardError
    def message
      "Invalid triangle, each side must be larger than 0 and the length of any side must not exceed the sum of the lengths of the other two sides"
    end
  end
end
