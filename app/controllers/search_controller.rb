class SearchController < ApplicationController
  def index
    @stations = NrelService.new(params[:q]).stations
  end
end
