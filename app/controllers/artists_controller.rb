class ArtistsController < ApplicationController
    skip_before_action :verify_authenticity_token

  #FORM*
  def edit
    @artist = Artist.find(params[:id])
  end

  #create: *
  def create
    @artist = Artist.create(artist_params)
    redirect_to artists_path
  end

  def new
  end

  #read:*
  def index
    @artists = Artist.all
  end

  #show *
  def show
    @artist = Artist.find(params[:id])
  end

  #update: *
  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    redirect_to artist_path #maybe put @
  end

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end


end
