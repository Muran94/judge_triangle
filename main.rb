require_relative 'lib/judge_triangle'

puts %(与えられた座標が整数値の時)
puts %(A(1, 1), B(2, 3), C(2, -1)  => #{JudgeTriangle.new(1, 1, 2, 3, 2, -1).triangle?})
puts %(A(1, 1), B(1, 3), C(1, -1)  => #{JudgeTriangle.new(1, 1, 1, 3, 1, -1).triangle?})
puts %(A(1, 1), B(3, 1), C(-2, 1)  => #{JudgeTriangle.new(1, 1, 3, 1, -2, 1).triangle?})
puts %(A(-3, -3), B(0, 0), C(3, 3) => #{JudgeTriangle.new(-3, -3, 0, 0, 3, 3).triangle?})
puts %(A(0, 0), B(0, 0), C(0, 0)   => #{JudgeTriangle.new(0, 0, 0, 0, 0, 0).triangle?})

puts %(与えられた座標が不動小数値の時（小数点２桁以下四捨五入）)