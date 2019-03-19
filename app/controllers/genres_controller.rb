class GenresController< ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        @genres = Genre.all 
    end
    def show
        @genre = Genre.find(params[:id])


    end

    def new
    end

    def create
     genre = Genre.create(genre_params)
     redirect_to genre
    end
    def edit
        @genre = Genre.find(params[:id])
    end

    def update
        genre = Genre.find(params[:id])
        genre.update(genre_params)
        redirect_to genre_path
    
    end


    def genre_params
        params.require(:genre).permit(:name)
    end


   

end