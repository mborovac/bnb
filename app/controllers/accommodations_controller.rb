class AccommodationsController < ApplicationController

  def index
    @accommodations = Accommodation.all
    respond_to do |format|
      format.html
      format.json
    end
  end

  def show
    @accommodation = Accommodation.find(params[:id])
    respond_to do |format|
      format.html
      format.json
    end
  end

  private

  def accommodations_params
    params.require(:accommodation).permit(:name)
  end
end
