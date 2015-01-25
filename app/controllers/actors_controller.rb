class ActorsController < ApplicationController

    def index
        @actors = Actor.all
        respond_to do |format|
            format.html
            format.xml { render xml: @actors }
        end
    end

    def new
        @actor = Actor.new
    end

    def show
        @actor = Actor.find(params[:id])
        respond_to do |format|
            format.html 
            format.xml { render xml: @actor }
            format.json { render json: @actor }
        end
    end

    def create
        @actor = Actor.new(params[:actor].permit(:fname, :lname))
        respond_to do |format|
            if @actor.save
                format.html { redirect_to @actor, notice: 'Actor Added' }
                format.js
            else
                format.html { render :new }
                format.js
            end
        end
    end
end
