class ToursController < ApplicationController
  def create
    @tour = Tour.new(tours_params)
  end

  def new
    @tour = Tour.new
  end

  def edit
  end

  def update
  end

  def show
  end

  def index
    @tours = Tour.all
  end

  def destroy
  end

  def selectgroup
  end

  private

  def tours_params
    params.require(:tour).permit(:name)
  end
end
