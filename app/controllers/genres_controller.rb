class GenresController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def new
  end
  
  def create
   # genre = Genre.create(genre_params[:genre])
    redirect_to Genre.create(genre_params[:genre])
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def index
    @genres = Genre.all
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    genre = Genre.find(params[:id])
    genre.update(genre_params[:genre])
    redirect_to genre
  end

  def genre_params
    params.permit genre: [:name]
  end



end
