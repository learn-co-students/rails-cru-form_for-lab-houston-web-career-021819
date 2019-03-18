class GenresController < ApplicationController
  skip_before_action :verify_authenticity_token

  #FORM*
  def edit
    @genre = Genre.find(params[:id])
  end

  #create: *
  def create
    @genre = Genre.create(genre_params)
    redirect_to genres_path
  end

  def new
  end

  #read:*
  def index
    @genres = Genre.all
  end

  #show *
  def show
    @genre = Genre.find(params[:id])
  end

  #update: *
  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)
    redirect_to @genre #maybe put @
  end

  def genre_params
    params.require(:genre).permit(:name)
  end

end
