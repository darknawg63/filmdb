class FilmsController < ApplicationController

    def index
        @films = Film.all
    end

    def create
        @film = Film.new(params[:film].permit(:title, :description,
                         :genre, :release_date))
        respond_to do |format|
            if @film.save
                format.html { redirect_to @film, notice: 'Film Added' }
            end
        end
    end

    def new
        @film = Film.new
    end

    def show
        @film = Film.find(params[:id])
    end
end
