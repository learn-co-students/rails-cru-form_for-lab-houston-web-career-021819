class SongsController < ApplicationController

    skip_before_action :verify_authenticity_token

    def index
        @songs = Song.all
    end

    def edit
        @song = Song.find(params[:id])
    end

    def new
        @song = Song.create
    end

    def update
        @song = Song.find(params[:id])
        @song.update(song_params[:song])
        redirect_to @song
    end

    def show
        @song = Song.find(params[:id])
        @genre = Genre.find(@song.genre_id)
        @artist = Artist.find(@song.artist_id)
    end

    def create
        song = Song.create(song_params[:song])
        redirect_to song
    end

    def song_params
        params.permit(song: [:name, :artist_id, :genre_id])
    end
end