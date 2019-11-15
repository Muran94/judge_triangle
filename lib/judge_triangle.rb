class JudgeTriangle
  def initialize(x1, y1, x2, y2, x3, y3)
    @coordinate1 = x1, y1
    @coordinate2 = x2, y2
    @coordinate3 = x3, y3
  end
  
  def triangle?
    return false if on_the_same_line?(@coordinate1, @coordinate2, @coordinate3) # 3点の座標の、x座標が同一直線上にあるか
    if on_the_same_line?(@coordinate1, @coordinate2, @coordinate3) # 3点の座標の、x座標が同一直線上にあるか
      false
    else
      true
    end
  end

  private

  def set_coordinate(x, y)
    [x, y]
  end

  def on_the_same_line?(coordinate1, coordinate2, coordinate3)
    dx1 = (coordinate1[0].round(2) - coordinate2[0].round(2)) * 100
    dx2 = (coordinate1[0].round(2) - coordinate3[0].round(2)) * 100
    dy1 = (coordinate1[1].round(2) - coordinate2[1].round(2)) * 100
    dy2 = (coordinate1[1].round(2) - coordinate3[1].round(2)) * 100

    dx1 * dy2 == dx2 * dy1
  end
end