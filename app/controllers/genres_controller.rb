class GenresController < ApplicationController

    def index
        @genres = Genre.all
    end

    def show
        @genre = Genre.all.find(params[:id])
    end

    def new
    end

    def create 
    @genre = Genre.create(genre_params(:name))
    redirect_to action: "show", id: @genre.id
    end

    def edit
        @genre = Genre.find(params[:id])
    end

    def update
        @genre = Genre.find(params[:id])
        @genre.update(genre_params(:name))
        redirect_to action: "show", id: @genre.id
    end

    private

    def genre_params(*args)
        params.require(:genre).permit(*args)
    end
end