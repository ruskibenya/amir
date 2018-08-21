class ToursController < ApplicationController

  def index
    @tours = Tour.all
  end

  def show
    @tour = Tour.find(params[:id])
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

  private

  def tours_params
    params.require(:tour).permit(:name, :start_date, :end_date)
  end
end
