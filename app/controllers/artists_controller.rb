class ArtistsController < ApplicationController
    
  skip_before_action :verify_authenticity_token  
  

    #Forms
    def edit
      @artist = Artist.find(params[:id])
      # @artists = Artist.all 
    end

    def new
    end

    #Create
    def create
      @artist = Artist.create(artist_params[:artist])
      redirect_to '/artists'
    end

    #Read
    def index
      @artists = Artist.all
    end

    def show
      @artist = Artist.find(params[:id])
    end

    #Update
    def update 
      @artist = Artist.find(params[:id])
      @artist.update(artist_params[:artist])
      redirect_to @artist 
    end

    #Destroy
    def destroy 
      @artist = Artist.find(params[:id])
      @artist.destroy
      redirect_to artists '/artists'
    end

    def artist_params
      params.permit(artist: [:id, :name, :bio])
    end
  end