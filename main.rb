require_relative 'lib/triangle'

puts "-" * 75
puts %(与えられた座標が整数値の時)
puts "-" * 75
puts %(A(1, 1), B(2, 3), C(2, -1)  => #{Triangle.new(1, 1, 2, 3, 2, -1).is_triangle?})
puts %(A(1, 1), B(1, 3), C(1, -1)  => #{Triangle.new(1, 1, 1, 3, 1, -1).is_triangle?})
puts %(A(1, 1), B(3, 1), C(-2, 1)  => #{Triangle.new(1, 1, 3, 1, -2, 1).is_triangle?})
puts %(A(-3, -3), B(0, 0), C(3, 3) => #{Triangle.new(-3, -3, 0, 0, 3, 3).is_triangle?})
puts %(A(0, 0), B(0, 0), C(0, 0)   => #{Triangle.new(0, 0, 0, 0, 0, 0).is_triangle?})

puts "\n\n"
puts "-" * 75
puts %(与えられた座標が不動小数値の時（小数点２桁以下四捨五入）)
puts "-" * 75
puts %(A(1.111, 1.111), B(2.222, 3.333), C(2.222, -1.111)  => #{Triangle.new(1.111, 1.111, 2.222, 3.333, 2.222, -1.111).is_triangle?})
puts %(A(1.111, 1.111), B(1.111, 3.333), C(1.111, -1.111)  => #{Triangle.new(1.111, 1.111, 1.111, 3.333, 1.111, -1.111).is_triangle?})
puts %(A(1.111, 1.111), B(3.333, 1.111), C(-2.222, 1.111)  => #{Triangle.new(1.111, 1.111, 3.333, 1.111, -2.222, 1.111).is_triangle?})
puts %(A(-3.333, -3.333), B(0.000, 0.000), C(3.333, 3.333) => #{Triangle.new(-3.333, -3.333, 0.000, 0.000, 3.333, 3.333).is_triangle?})
puts %(A(0.000, 0.000), B(0.000, 0.000), C(0.000, 0.000)   => #{Triangle.new(0.000, 0.000, 0.000, 0.000, 0.000, 0.000).is_triangle?})