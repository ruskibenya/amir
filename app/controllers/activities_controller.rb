class ActivitiesController < ApplicationController
  def index
    @activities = Activity.where.not(latitude: nil, longitude: nil)
    @markers = @activities.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
      }
    end
  end
end
