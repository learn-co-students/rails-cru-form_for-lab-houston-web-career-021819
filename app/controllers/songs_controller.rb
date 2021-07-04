class SongsController < ApplicationController
    skip_before_action :verify_authenticity_token  
  

    #Forms
    def edit
      @song = Song.find(params[:id])
      @songs = Song.all 
    end

    def new
    end

    #Create
    def create
      @song = Song.create(song_params[:song])
      redirect_to "/songs/#{@song.id}"
    end

    #Read
    def index
      @songs = Song.all
    end

    def show
      @song = Song.find(params[:id])
      @genre = Genre.find(@song.genre_id)
      @artist = Artist.find(@song.artist_id)
    end

    #Update
    def update 
      @song = Song.find(params[:id])
      @song.update(song_params[:song])
      redirect_to "/songs/#{@song.id}"
    end

    #Destroy
    def destroy 
      @song = Song.find(params[:id])
      @song.destroy
      redirect_to songs '/songs'
    end

    def song_params
      params.permit(song: [:name, :artist_id, :genre_id])
    end
end