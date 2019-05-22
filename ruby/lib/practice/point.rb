module Practice
  class Point
    def initialize(coords)
      @x = coords[:x]
      @y = coords[:y]
    end

    def distance_to(other_point)
      if other_point.equals?(@x, @y)
        0
      end
    end

    def equals?(coord_x, coord_y)
      (@x == coord_x) && (@y == coord_y)
    end
  end
end