class SessionsController < ApplicationController
    
    def new
    end

    def create
        if params[:name] == nil || params[:name].empty?
            redirect_to '/login'
        else
            session[:name] = params[:name]
        end
    end

    def destroy
        if session[:name]
            session.destroy
            redirect_to '/'
        end
    end
end