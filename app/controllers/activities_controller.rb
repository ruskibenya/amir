class ActivitiesController < ApplicationController

  def update
    #raise
    # raise params.inspect
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

  private

  def activities_params
    params.require(:activity).permit(:starting_time, :ending_time)
  end
end
