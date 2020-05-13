class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

 def create
    @flat = Flat.new(flat_params)
    @flat.save

    # no need for app/views/restaurants/create.html.erb
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :descriptoin, :price_per_night, :number_of_guests)
  end
end


