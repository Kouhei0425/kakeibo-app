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

  def edit
    @thing = Thing.find(params[:id])
  end

  def update
    thing = Thing.find(params[:id])
    thing.update(thing_params)
  end

  def destroy
    thing = Thing.find(params[:id])
    thing.destroy
  end


  private
  def thing_params
    params.require(:thing).permit(:name, :price)
  end
end
