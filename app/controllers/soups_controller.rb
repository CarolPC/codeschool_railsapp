class SoupsController < ApplicationController
    def index
    end

    def show
        @soup = Soup.find(params[:id])
    end
end
