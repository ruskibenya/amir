class ToursController < ApplicationController

  def index
    @tours = Tour.all
  end

  def show
    @tour = Tour.find(params[:id])
  end

  def new
    @groups = Group.all
    @activities = Activity.all
    @tour = Tour.new
  end

  def create
    activity_ids = tours_params[:activities].reject(&:empty?)
    @tour = Tour.new(tours_params.except(:activities))
    @tour.activity_ids = activity_ids
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

  private

  def tours_params
    params.require(:tour).permit(:name, :start_date, :group_id, :end_date, :activities => [])
  end
end
