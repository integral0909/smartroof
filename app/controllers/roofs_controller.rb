class RoofsController < ApplicationController
  def show
    coords   = Geocoder.search(params[:id])
    if coords.any?
      location = coords.first.coordinates
      @roof    = Roof.new(address: params[:id], latitude: location[0], longitude: location[1])
    end
  end

  def create
    @roof = Roof.new(roof_params)
    respond_to do |format|
      if @roof.save
        format.js { RoofMailer.estimation(@roof).deliver_now }
      else
        format.js
      end
    end
  end

  def update
    @roof = Roof.find(params[:id])
    respond_to do |format|
      format.js { @roof.update(quotes: params[:quotes]) }
    end
  end

  private

  def roof_params
    params.require(:roof).permit(:name, :email, :address, :phone, :latitude, :longitude, :area, :slope, :estimation)
  end
end
