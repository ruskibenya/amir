  class ToursController < ApplicationController

  def show
    @tour = Tour.find(params[:id])
    @activity = Activity.new
    @activities = @tour.activities
    @s = 1
    @markers = @activities.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        infoWindow: { content: "#{activity.name}: #{activity.starting_time.strftime("%l%P")} - #{activity.ending_time.strftime("%l%P")}" },
        icon: ActionController::Base.helpers.asset_path('backpack_marker.png'),
        label: { text: "#{activity.order_number}", fontSize: "18px"}
      }
    end

    @users_locations_markers = @tour.group.invitations.map do |invitation|
        if ( !invitation.user.nil? && !invitation.user.latitude.nil? )
          user_location_marker = {
            lat: invitation.user.latitude,
            lng: invitation.user.longitude,
            infoWindow: { content: "#{invitation.user.name}" },
            icon: ActionController::Base.helpers.asset_path('backpack_marker.png')
        }
        @markers << user_location_marker
      end
    end
  end

  def new
    @tour = Tour.new
    # TODO: decide how add group to new tour
    @groups = Group.all
  end

  def create
    @tour = Tour.new(tours_params)
    @tour.user = current_user
    if @tour.save
      redirect_to  authenticated_root_path
    else
      @groups = Group.all
      render :new
    end
  end

  def visitor_show
    @invitation = Invitation.find(params[:invitation_id])
    @tour = Tour.find(params[:tour_id])
    @invitation.email = current_user.email if @invitation.email != current_user.email
    @invitation.user = current_user
    @invitation.save
  end

  private

  def tours_params
    params.require(:tour).permit(:name, :start_date, :end_date, :group_id, :category)
  end
end
