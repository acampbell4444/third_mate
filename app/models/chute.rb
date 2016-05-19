class Chute < ActiveRecord::Base
  def eagle_35_closed(windspeed)
    eagle = {
      0 =>  [115, 370],
      1 =>  [115, 390],
      2 =>  [115, 410],
      3 =>  [115, 430],
      4 =>  [115, 455],
      5 =>  [115, 475],
      6 =>  [115, 500],
      7 =>  [115, 500],
      8 =>  [115, 500],
      9 =>  [115, 500],
      10 => [115, 500],
      11 => [190, 500],
      12 => [265, 500],
      13 => [350, 500],
      14 => [425, 500],
      15 => [495, 500],

    }
    if windspeed > 15
      return "According to the Manufacturer, It is Too windy to fly a 35 with the Zippers Closed."
    else
      return eagle[windspeed]
    end
  end

  def eagle_35_open(windspeed)
    eagle = {
      10 => [115, 115],
      11 => [115, 185],
      12 => [115, 260],
      13 => [190, 345],
      14 => [265, 420],
      15 => [340, 495],
      16 => [420, 500],
      17 => [500, 500],

    }
    if windspeed < 10
      return "It is not necessary to unzip the 35 until winds reach at least 10 mph"
    elsif windspeed > 17
      return "According to the Manufacturer, It is Too windy to fly a 35 with the Zippers Open"
    else
      return eagle[windspeed]
    end
  end

  def tristar_37_closed(windspeed)
    tristar = {
      0 =>  [120, 410],
      1 =>  [120, 430],
      2 =>  [120, 455],
      3 =>  [120, 475],
      4 =>  [120, 500],
      5 =>  [120, 525],
      6 =>  [120, 525],
      7 =>  [120, 525],
      8 =>  [120, 525],
      9 =>  [120, 525],
      10 => [200, 525],
      11 => [275, 525],
      12 => [360, 525],
      13 => [450, 525],
      14 => [475, 525]
    }
    if windspeed > 14
      return "According to the Manufacturer, It is Too windy to fly a 37 with the Zippers Closed."
    else
      return tristar[windspeed]
    end
  end

  def tristar_37_open(windspeed)
    tristar = {
      9  => [120, 120],
      10 => [120, 195],
      11 => [120, 275],
      12 => [200, 355],
      13 => [280, 440],
      14 => [360, 520],
      15 => [445, 525],
      16 => [525, 525]
    }
    if windspeed < 9
      return "It is not necessary to unzip the 37 until winds reach at least 9 mph"
    elsif windspeed > 16
      return "According to the Manufacturer, It is Too windy to fly a 37 with the Zippers Open"
    else
      return tristar[windspeed]
    end
  end


end
