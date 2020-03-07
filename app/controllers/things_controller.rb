class ThingsController < ApplicationController
  def index
    @things = Thing.all
  end

  def new
    @thing = Thing.new
  end

  def create
    # binding.pry
    Thing.create(thing_params)
    redirect_to root_path
  end

  private
  def thing_params
    params.require(:thing).permit(:name, :price)
  end
end
