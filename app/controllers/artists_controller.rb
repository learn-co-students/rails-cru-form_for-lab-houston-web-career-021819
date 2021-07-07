class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end

    def show
        @artist = Artist.all.find(params[:id])
    end

    def new
    end

    def create 
        if params[:artist][:name]!=""
            @artist = Artist.create(artist_params(:name,:bio))
        else
            raise "Enter a name!"
        end
        redirect_to action: "show", id: @artist.id
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    def update
        @artist = Artist.find(params[:id])
        @artist.update(artist_params(:name,:bio))
        redirect_to action: "show", id: @artist.id
    end

    private

    def artist_params(*args)
        params.require(:artist).permit(*args)
    end
end