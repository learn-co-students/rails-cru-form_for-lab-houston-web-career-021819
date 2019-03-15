class ArtistsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def new
  end
  
  def create
    artist = Artist.create(artist_params[:artist])
    redirect_to artist
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def index
    @artists = Artist.all
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    artist = Artist.find(params[:id])
    artist.update(artist_params[:artist])
    redirect_to artist
  end

  def artist_params
    params.permit artist: [:name]
  end
end
