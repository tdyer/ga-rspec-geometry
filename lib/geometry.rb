require 'pry'

module Geometry
  class Triangle
    attr_accessor :a, :b, :c

    def initialize(a,b,c)
      @a = a
      @b = b
      @c = c
    end

    def valid?
      if (@a + @b > @c) && (@b + @c > @a) && (@c + @a > @b)
        true
      else
        false
      end
    end

    def perimeter
      if valid?
        @a + @b + @c
      else
        puts "Not a valid triangle"
      end
    end

    def area
      if valid?
        semi_perimeter = self.perimeter.to_f / 2
        num_to_sqrt = semi_perimeter * (semi_perimeter - @a) * (semi_perimeter - @b) * (semi_perimeter - @c)
        area = Math.sqrt(num_to_sqrt)
        return area.round(2)
      else
        puts "Not a valid triangle"
      end
    end

    def angles
      angles = []

      cos_a = ((@b ** 2) + (@c ** 2) - (@a ** 2)).to_f / (2 * @b * @c).to_f
      angles << Math.acos(cos_a).round(2)

      cos_b = ((@a ** 2) + (@c ** 2) - (@b ** 2)).to_f / (2 * @a * @c).to_f
      angles << Math.acos(cos_b).round(2)

      cos_c = ((@a ** 2) + (@b ** 2) - (@c ** 2)).to_f / (2 * @a * @b).to_f
      angles << Math.acos(cos_c).round(2)

      return angles
    end

  end


  class Rectangle 
    attr_accessor :length, :width

    def initialize(length, width)
      @length = length
      @width = width
    end

    def area
      @length * @width
    end

    def perimeter
      (@length * 2) + (@width * 2)
    end

  end


  class Circle 
    attr_accessor :radius

    def initialize(radius)
      @radius = radius
    end

    def circumference 
      2 * @radius * Math::PI
    end

    def area 
      Math::PI * (@radius ** 2)
    end



  end

end

new_t = Geometry::Triangle.new(3,4,5)

puts new_t.valid?
puts new_t.area
puts new_t.angles



# triangle

# angles (outputs array of angles)
# valid?
