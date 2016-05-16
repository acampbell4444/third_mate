class ChutesController < ApplicationController
  def parachute_selector

  end

  def new
    @chute = Chute.new

  end
end
