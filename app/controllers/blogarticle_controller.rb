class BlogarticleController < ApplicationController
    def index
        render json:Blgarticle.all
    end

    def show
        puts params[:id]
        b = Blgarticle.exists?(params[:id])
        if b
        v = Blgarticle.find(params[:id])
        render json:
        else
        render html:"No data found"     
       end
    end 
end
