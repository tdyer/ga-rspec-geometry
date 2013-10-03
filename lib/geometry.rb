require 'pry'

module Geometry
  class Triangle
    attr_accessor :a, :b, :c

    def initialize(a,b,c)
      @a = a
      @b = b
      @c = c
    end

    def perimeter
      @a + @b + @c
    end

    def area
      perim = (self.perimeter/2)
      num_to_sqrt = perim * (perim - @a) * (perim - @b) * (perim - @c)
      Math.sqrt(num_to_sqrt)
    end
    
  end
end
