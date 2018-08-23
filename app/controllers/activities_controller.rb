class ActivitiesController < ApplicationController
  def create
    @tour = Tour.find(params[:tour_id])
    @activity = Activity.new(activity_params)
    @activity.tour = @tour

    respond_to do |format|
      format.html {
        if @activity.save
          redirect_to @tour
        else
          render 'tours/show'
        end
      }

      format.js
    end
  end

  def update
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

  def show
    @tour = Tour.find(params[:tour_id])
    @activity = Activity.find(params[:id])
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :address, :city, :meeting_point, :category)
  end
end
