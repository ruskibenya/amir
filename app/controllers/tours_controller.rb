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
        icon: ActionController::Base.helpers.asset_path('marker-activity2.png'),
        label: { text: "#{activity.order_number}", fontSize: "15px", fontWeight: "bold"}
      }
    end

    if @tour.group.nil?
      @tour.group = Group.new(name: "default group")
      @tour.group.save
    end
    @tour.group.invitations.map do |invitation|
      if ( !invitation.user.nil? && !invitation.user.latitude.nil? )
        user_location_marker = {
          lat: invitation.user.latitude,
          lng: invitation.user.longitude,
          infoWindow: { content: "#{invitation.user.name}" },
          icon: ActionController::Base.helpers.asset_path('backpack_marker.png'),
          label: { text: "#{invitation.user.name[0].capitalize}.", fontSize: "15px", fontWeight: "bold"}
      }
      @markers << user_location_marker
      end
    end

    if ( !current_user.nil? && !current_user.latitude.nil? )
      current_user_location_marker = {
            lat: current_user.latitude,
            lng: current_user.longitude,
            infoWindow: { content: "Your location" },
            icon: ActionController::Base.helpers.asset_path('current_user_marker.png'),
            label: { text: "Me", fontSize: "15px", fontWeight: "bold"}
        }
        @markers << current_user_location_marker
    end
  end

  def visitor_show
    @invitation = Invitation.find(params[:invitation_id])
    @tour = Tour.find(params[:tour_id])
    @activities = @tour.activities
    @invitation.email = current_user.email if @invitation.email != current_user.email
    @invitation.user = current_user
    @invitation.save
    @s = 1
    @markers = @activities.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        infoWindow: { content: "#{activity.name}: #{activity.starting_time.strftime("%l%P")} - #{activity.ending_time.strftime("%l%P")}" },
        icon: ActionController::Base.helpers.asset_path('marker-activity2.png'),
        label: { text: "#{activity.order_number}", fontSize: "15px", fontWeight: "bold"}
      }
    end

    if ( !current_user.nil? && !current_user.latitude.nil? )
      current_user_location_marker = {
            lat: current_user.latitude,
            lng: current_user.longitude,
            infoWindow: { content: "Your location" },
            icon: ActionController::Base.helpers.asset_path('current_user_marker.png'),
            label: { text: "Me", fontSize: "15px", fontWeight: "bold"}
        }
        @markers << current_user_location_marker
    end
  end

  def new
    @tour = Tour.new
    # TODO: decide how add group to new tour
    @groups = current_user.tours.map(&:group).uniq
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

  private

  def tours_params
    params.require(:tour).permit(:name, :start_date, :end_date, :group_id, :category)
  end
end
