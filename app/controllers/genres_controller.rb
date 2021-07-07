class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
    @genres = Genre.all
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params[:genre])
    redirect_to genre_path(@genre)
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params[:genre])
	  @genre.save
	  redirect_to genre_path(@genre)
  end

  def destroy
    @genre = Genre.find(params[:id])
    @genre.destroy
    redirect_to '/genres'
  end

  def genre_params
    request_params = params
    params.permit(genre: [:name])
  end
end
