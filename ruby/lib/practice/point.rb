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
      xDistance = other_point.distance_in_same_row(@x)
      if other_point.same_row?(@y)
        return xDistance
      end
      yDistance = other_point.distance_in_same_col(@y)
      if other_point.same_col?(@x)
        return yDistance
      end 
      
      [xDistance, yDistance].min
    end
    
    def equals?(coord_x, coord_y)
      (@x == coord_x) && (@y == coord_y)
    end



    def same_row?(coord_y)
      @y==coord_y
    end

    def distance_in_same_row(coord_x)
      (@x - coord_x).abs
    end

    def distance_in_same_col(coord_y)
      (@y - coord_y).abs
    end
   
    def same_col?(coord_x)
      (@x ==coord_x)
    end

    def same_row?(coord_y)
      @y==coord_y
    end
  end
end