require 'pry'

class Triangle
  attr_accessor :s1, :s2, :s3
  def initialize(s1, s2, s3)
    @s1=s1
    @s2=s2
    @s3=s3
  end
  
  def kind
    if (s1+s2) <= s3 || (s1+s3) <= s2 || (s2+s3) <= s1 || s1 <=0 || s2 <=0 || s3 <=0
      begin
        raise TriangleError
      # rescue TriangleError=>error
      #   puts error.message   
      end
    elsif s1==s2 && s1==s3
      :equilateral
    elsif s1==s2 || s1==s3 || s2==s3
      :isosceles
    else
      :scalene
    end    
  end

  class TriangleError < StandardError
    def message
      "Triange is invalid. Each side must be larger than 0.The sum of the lengths of any two sides of a triangle always exceeds the length of the third side"
    end
  end
end


triangle_one = Triangle.new(2, 2, 2)
triangle_two = Triangle.new(3, 4, 4)
triangle_tree = Triangle.new(3, 4, 5)
not_a_triangle = Triangle.new(0, 0, 0)
bad_triangle = Triangle.new(1, 1, 3)

