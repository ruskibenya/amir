class ToursController < ApplicationController

  def index
    @tours = Tour.all
  end

  def show
    @tour = Tour.find(params[:id])
    # @activities = Activity.where(tour_id: @tour.id).not(latitude: nil, longitude: nil)
    # @markers = @activities.map do |activity|
    #   {
    #     lat: activity.latitude,
    #     lng: activity.longitude,
    #   }
    # end
  end

  def new
    @groups = Group.all
    @tour = Tour.new
  end

  def create
    @tour = Tour.new(tours_params)
    @tour.user = current_user
    # @tour.group = Group.find_by(name: "Le Wagon: Tel Aviv")
    if @tour.save
      redirect_to tour_path(@tour)
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
end
