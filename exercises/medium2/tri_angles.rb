def triangle(a, b, c)
  angles = [a, b, c]
  return :invalid if (angles.reduce(:+) != 180) || (angles.any? {|a| a <= 0})
  return :right if angles.any? {|a| a == 90}
  angles.any? {|a| a > 90} ? :obtuse : :acute
end

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid