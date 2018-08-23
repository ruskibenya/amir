  class ToursController < ApplicationController

  def index
    @tours = Tour.all
  end

  def show
    @tour = Tour.find(params[:id])
    @activity = Activity.new
    @activities = @tour.activities
    @s = 1
    @markers = @activities.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
      }
    end
  end

  def new
    @tour = Tour.new
    @groups = Group.all
    #@activities = Activity.all
    #@tour.activities.build
  end

  def create
    #activities = tours_params[:activities]
    @tour = Tour.new(tours_params)
    # @tour.activity_ids = activity_ids
    # raise
    @tour.user = current_user
    if @tour.save
      redirect_to tours_path
    else
      @groups = Group.all
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def selectgroup
  end

  def visitor_show
    @invitation = Invitation.find(params[:invitation_id])
    @tour = Tour.find(params[:tour_id])
  end

  private

  def tours_params
    params.require(:tour).permit(:name, :start_date, :end_date, :group_id)
  end

  # def activities_params
  #   params.require(:tour).permit(activities_attributes: [:start_time])
  # end
end
