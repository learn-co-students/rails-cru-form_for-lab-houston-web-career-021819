class SongsController < ApplicationController
  skip_before_action :verify_authenticity_token

  #FORM*
  def edit
    @song = Song.find(params[:id])
    @artist = Artist.find(@song.artist_id)
    @genre = Genre.find(@song.genre_id)
  end

  #create: *
  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    redirect_to songs_path
  end

  #read:*
  def index
    @songs = Song.all
  end

  #show *
  def show
    @song = Song.find(params[:id])
    @artist = Artist.find(@song.artist_id)
    @genre = Genre.find(@song.genre_id)
  end

  #update: *
  def update
    @song = Song.find(params[:id])
    @song.update(song_params)

    redirect_to song_path #maybe put @
  end

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

end
