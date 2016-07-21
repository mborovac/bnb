class EventsController < ApplicationController

  def index
    @events = Event.all
    respond_to do |format|
      format.html
      format.json { render }
    end
  end

  def show
    @events = Event.find(params[:id])
    respond_to do |format|
      format.html
      format.json
    end
  end

  private

  def accommodations_params
    params.require(:event).permit(:name)
  end
end
