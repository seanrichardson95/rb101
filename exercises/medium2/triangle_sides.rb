def triangle(side1, side2, side3)
  sides = [side1, side2, side3].sort
  return :invalid if (sides[0] + sides[1]) <= sides[2]
  case sides.uniq.size
  when 1
    :equilateral
  when 2
    :isosceles
  when 3
    :scalene
  end
end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid
puts triangle(0, 0, 0) == :invalid
puts triangle(-1, -1, -1) == :invalid