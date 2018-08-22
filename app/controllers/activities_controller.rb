class ActivitiesController < ApplicationController

  def update
    #raise
    @activity = Activity.find(params[:id])
    @tour = Tour.find(params[:tour_id])
    @activity.tour = @tour
    @activity.save
    if @activity.save
      redirect_to tour_path
    else
      render :show
    end
  end



end
