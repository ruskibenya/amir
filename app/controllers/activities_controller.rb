class ActivitiesController < ApplicationController
  def create
    @tour = Tour.find(params[:tour_id])
    @activity = Activity.new(activity_params)
    @activity.tour = @tour
    @saved = @activity.save

    respond_to do |format|
      format.html {
        if @saved
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
    @activity.update(activities_params)

    if @activity.save
      respond_to do |format|
        format.html { redirect_to tour_path(@tour) }
        format.js  # <-- will render `app/views/activities/update.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'tours/show' }
        format.js
      end
    end
  end

  def show
    @tour = Tour.find(params[:tour_id])
    @activity = Activity.find(params[:id])
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :address, :city, :meeting_point, :category, :starting_time, :ending_time, :description)
  end
end
