class SearchController < ApplicationController
  def index
    @stations = Presenter.new(params[:q]).stations
    @stations = NrelService.new(params[:q]).stations
  end
end
