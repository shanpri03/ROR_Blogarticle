class BlogarticleController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        render json: Blgarticle.all
    end

    def show
        puts params[:id]
        b = Blgarticle.exists?(params[:id])
        if b
        v = Blgarticle.find(params[:id])
        render json: v
        else
        render html:"No data found"     
       end

    end
    
    def create
       v=!params[:atitle].empty?
       if(v)
        Blgarticle.create('atitle': params[:atitle], 'acontent': params[:acontent], 'aimg': params[:aimg])
        puts p
        render json: "Data added"
       else
        render json: "Data not added"
         end
    
    end

    def update
        b = Blgarticle.find(params[:id].to_i)
        b.update('atitle': params[:atitle], 'acontent': params[:acontent], 'aimg': params[:aimg])
        render json: "Data Updated"
    end

    def destroy
        a = Blgarticle.find(params[:id].to_i)
        a.destroy
        render json: "Data deleted"
    end

end
