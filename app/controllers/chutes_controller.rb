class ChutesController < ApplicationController
  def parachute_selector

  end

  def new
    @chute = Chute.new
  end

  def create
    @chute = Chute.create
    @chute = Chute.create(create_params)

    if @chute.save
      flash[:notice] = 'Info submitted.'
      redirect_to chute_path(@chute)
    else
      flash.now[:alert] = 'There was an error saving the info. Please try again.'
       render new_chute_path
    end
  end

  def show
    @chute = Chute.find(params[:id])
  end

  def create_params
    params.require(:chute).permit(:turbulence, :windspeed, :min_wt, :max_wt)
  end


end
