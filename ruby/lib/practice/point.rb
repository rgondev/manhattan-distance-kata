module Practice
  class Point
    def initialize(coords)
      @x = coords[:x]
      @y = coords[:y]
    end

    def distance_to(other_point)
      if other_point.equals?(@x, @y)
        return 0   
      end

      other_point.distance_in_same_row(@x)

    end

    def equals?(coord_x, coord_y)
      (@x == coord_x) && (@y == coord_y)
    end

    def distance_in_same_row(coord_x)
      @x - coord_x
    end
  end
end