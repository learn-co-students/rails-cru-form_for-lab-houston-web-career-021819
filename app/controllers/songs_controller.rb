class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
    @songs = Song.all
  end

  def update
    @song = Song.find(params[:id])
	  @song.update(song_params[:song])
	  redirect_to song_path(@song)
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params[:song])
    @song.save
    redirect_to song_path(@song)
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to '/songs'
  end

  def song_params
    request_params = params
    params.permit(song: [:name])
  end
end
