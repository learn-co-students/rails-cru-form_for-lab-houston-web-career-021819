class SongsController<ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        @songs = Song.all
        @artists = Artist.all
    end

    def show
        @song = Song.find(params[:id].to_i)
        
    end
    def new
    end

    def create
        song=Song.create(song_params)
        redirect_to song
    end

    def edit
        @song = Song.find(params[:id])
        @art = @song.artist_id
        @artist = Artist.find(params[:id])

    end

     def edit
        @song = Song.find(params[:id])
    end

    def update
        song = Song.find(params[:id])
        song.update(song_params)
        redirect_to song
    end
    def song_params
        params.require(:song).permit( :name,:artist_id, :genre_id)
    end
end