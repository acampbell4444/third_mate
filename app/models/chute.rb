class Chute < ActiveRecord::Base

  validates :windspeed, :numericality => { :only_integer => true,
    :greater_than_or_equal_to => 0, :less_than_or_equal_to => 25 }

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

  def galaxy_39_closed(windspeed)
    galaxy = {
      0 =>  [160, 460],
      1 =>  [160, 485],
      2 =>  [160, 520],
      3 =>  [160, 550],
      4 =>  [160, 580],
      5 =>  [160, 580],
      6 =>  [160, 580],
      7 =>  [230, 580],
      8 =>  [300, 580],
      9 =>  [375, 580],
      10 => [435, 580],
      11 => [505, 580],
      12 => [575, 580]
    }
    if windspeed > 12
      return "According to the Manufacturer, It is Too windy to fly a 39 with the Zippers Closed."
    else
      return galaxy[windspeed]
    end
  end

  def galaxy_39_open(windspeed)
    galaxy = {
      6  => [160, 160],
      7 =>  [160, 225],
      8 =>  [160, 300],
      9 =>  [225, 370],
      10 => [300, 435],
      11 => [370, 505],
      12 => [435, 580],
      13 => [510, 580],
      14 => [575, 580]
    }
    if windspeed < 6
      return "It is not necessary to unzip the 39 until winds reach at least 6 mph"
    elsif windspeed > 14
      return "According to the Manufacturer, It is Too windy to fly a 39 with the Zippers Open"
    else
      return galaxy[windspeed]
    end
  end


end
