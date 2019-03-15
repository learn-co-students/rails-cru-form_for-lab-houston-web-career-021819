class SongsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def new
    @artists = Artist.all
    @genres = Genre.all
  end
  
  def create
    song = Song.create(song_params[:song])
    redirect_to song
  end

  def show
    @song = Song.find(params[:id])
  end

  def index
    @songs = Song.all
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    song = Song.find(params[:id])
    song.update(song_params[:song])
    redirect_to song
  end

  def song_params
    params.permit song: [:name, :artist_id, :genre_id]
  end

end
