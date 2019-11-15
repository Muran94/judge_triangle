require 'spec_helper'
require 'triangle'

describe Triangle do
  describe "#is_triangle?" do
    context "整数値" do
      context "与えられた3点の座標が同一の座標である時" do
        it "falseを返す" do
          aggregate_failures do
            x1, y1 = 0, 0
            x2, y2 = 0, 0
            x3, y3 = 0, 0
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_falsy

            x1, y1 = 3, 3
            x2, y2 = 3, 3
            x3, y3 = 3, 3
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_falsy

            x1, y1 = -3, -3
            x2, y2 = -3, -3
            x3, y3 = -3, -3
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_falsy
          end
        end
      end

      context "与えられた3点の座標が同一直線上にある時" do
        it "falseを返す" do
          aggregate_failures do
            x1, y1 = 1,  1
            x2, y2 = 1,  3
            x3, y3 = 1, -2
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_falsy

            x1, y1 = 1,  1
            x2, y2 = 3,  1
            x3, y3 = -2, 1
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_falsy

            x1, y1 = -3, -3
            x2, y2 =  0,  0
            x3, y3 =  3,  3
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_falsy

            x1, y1 = -3, -3
            x2, y2 =  3,  3
            x3, y3 =  0,  0
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_falsy

            x1, y1 =  0,  0
            x2, y2 = -3, -3
            x3, y3 =  3,  3
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_falsy

            x1, y1 =  0,  0
            x2, y2 =  3,  3
            x3, y3 = -3, -3
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_falsy

            x1, y1 =  3,  3
            x2, y2 =  0,  0
            x3, y3 = -3, -3
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_falsy

            x1, y1 =  3,  3
            x2, y2 = -3, -3
            x3, y3 =  0,  0
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_falsy
          end
        end
      end

      context "与えられた３点の座標が同一直線上にない時" do
        it "trueを返す" do
          aggregate_failures do
            x1, y1 = 0, 0
            x2, y2 = 0, 3
            x3, y3 = 3, 0
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_truthy

            x1, y1 = 1, 2
            x2, y2 = 3, 2
            x3, y3 = 8, 1
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_truthy

            x1, y1 = -1, 2
            x2, y2 =  3, 2
            x3, y3 =  8, 3
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_truthy
          end
        end
      end
    end

    context "不動小数値" do
      context "与えられた3点の座標（小数点２桁以下四捨五入）が同一の座標である時" do
        it "falseを返す" do
          aggregate_failures do
            x1, y1 = 0.000, 0.000
            x2, y2 = 0.000, 0.000
            x3, y3 = 0.000, 0.000
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_falsy

            x1, y1 = 0.001, 0.000
            x2, y2 = 0.003, 0.000
            x3, y3 = 0.000, 0.000
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_falsy

            x1, y1 = 3.333, 3.333
            x2, y2 = 3.333, 3.333
            x3, y3 = 3.333, 3.333
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_falsy

            x1, y1 = 3.333, 3.331
            x2, y2 = 3.333, 3.334
            x3, y3 = 3.333, 3.333
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_falsy

            x1, y1 = -3.333, -3.333
            x2, y2 = -3.333, -3.333
            x3, y3 = -3.333, -3.333
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_falsy

            x1, y1 = -3.331, -3.333
            x2, y2 = -3.334, -3.333
            x3, y3 = -3.330, -3.333
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_falsy
          end
        end
      end

      context "与えられた3点の座標が同一直線上にある時" do
        it "falseを返す" do
          aggregate_failures do
            x1, y1 = 1.111,  1.099
            x2, y2 = 1.111,  3.111
            x3, y3 = 1.111, -2.112
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_falsy

            x1, y1 = 1.112,  1.099
            x2, y2 = 1.110,  3.111
            x3, y3 = 1.114, -2.112
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_falsy

            x1, y1 =  1.099, 1.111
            x2, y2 =  3.111, 1.111
            x3, y3 = -2.112, 1.111
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_falsy

            x1, y1 =  1.099, 1.112
            x2, y2 =  3.111, 1.110
            x3, y3 = -2.112, 1.114
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_falsy

            x1, y1 = -3.333, -3.333
            x2, y2 =  0.000,  0.000
            x3, y3 =  3.000,  3.000
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_falsy

            x1, y1 = -3.331, -3.329
            x2, y2 =  0.001,  0.003
            x3, y3 =  3.331,  3.333
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_falsy

            x1, y1 =  0.000,  0.000
            x2, y2 = -3.333, -3.333
            x3, y3 =  3.000,  3.000
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_falsy

            x1, y1 =  0.001,  0.003
            x2, y2 = -3.331, -3.329
            x3, y3 =  3.331,  3.333
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_falsy
          end
        end
      end

      context "与えられた３点の座標が同一直線上にない時" do
        it "trueを返す" do
          aggregate_failures do
            x1, y1 = 0.000, 0.000
            x2, y2 = 0.000, 3.333
            x3, y3 = 3.333, 0.000
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_truthy

            x1, y1 = 0.001, 0.000
            x2, y2 = 0.001, 3.332
            x3, y3 = 3.330, 0.002
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_truthy

            x1, y1 = 1.111, 2.222
            x2, y2 = 3.333, 2.222
            x3, y3 = 8.888, 1.111
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_truthy

            x1, y1 = 1.110, 2.220
            x2, y2 = 3.334, 2.223
            x3, y3 = 8.889, 1.110
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_truthy

            x1, y1 = -1.111, 2.222
            x2, y2 =  3.333, 2.222
            x3, y3 =  8.888, 3.333
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_truthy

            x1, y1 = -1.110, 2.221
            x2, y2 =  3.331, 2.224
            x3, y3 =  8.887, 3.331
            expect(Triangle.new(x1, y1, x2, y2, x3, y3).is_triangle?).to be_truthy
          end
        end
      end
    end
  end
end