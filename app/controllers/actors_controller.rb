class ActorsController < ApplicationController

    def new
        @actor = Actor.new
    end

    def show
        @actor = Actor.find(params[:id])
    end

    def create
        @actor = Actor.new(params[:actor].permit(:fname, :lname))
        respond_to do |format|
            if @actor.save
                format.html { redirect_to @actor, notice: 'Actor Created' }
            end
        end
    end
end
