class GenresController < ApplicationController

    skip_before_action :verify_authenticity_token  
  
    #Forms
    def edit
      @genre = Genre.find(params[:id])
    #   @genres = Genre.all 
    end

    def new
    end

    #Create
    def create
      @genre = Genre.create(genre_params[:genre])
      redirect_to "/genres/#{@genre.id}"
    end

    #Read
    def index
      @genres = Genre.all
    end

    def show
      @genre = Genre.find(params[:id])
    end

    #Update
    def update 
      @genre = Genre.find(params[:id])
      @genre.update(genre_params[:genre])
      redirect_to "/genres/#{@genre.id}"
    end

    #Destroy
    def destroy 
      @genre = Genre.find(params[:id])
      @genre.destroy
      redirect_to genres '/genres'
    end

    def genre_params
      params.permit(genre: [:name])
    end
end