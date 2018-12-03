class ArtistsController < ApplicationController
  def index
    if params[:q].present?
      @artists = Artist.where('lower(name) LIKE ?', '%' + params[:q].downcase + '%')
    else
      @artists = Artist.all
    end
  end

  def show
    @artist = Artist.find(params[:id])
  end
end
