class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def show
        @song = Song.all.find(params[:id])
    end

    def new
        @artists = Artist.all
        @genres = Genre.all
    end

    def create 
    @song = Song.create(song_params(:name,:artist_id,:genre_id))
    redirect_to action: "show", id: @song.id
    end

    def edit 
        @song = Song.find(params[:id])
        @artists = Artist.all
        @genres = Genre.all
    end

    def update 
        @song = Song.find(params[:id]) 
        @song.update(song_params(:name, :artist_id, :genre_id))
        redirect_to action: "show", id: @song.id
    end

    private

    def song_params(*args)
        params.require(:song).permit(*args)
    end
end