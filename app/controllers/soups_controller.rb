class SoupsController < ApplicationController
    before_action :fetch_soup, only: [:show, :edit, :update, :destroy]

    def index
        @soups = Soup.all

        respond_to do |format|
            format.json { render json: @soups }
        end
    end

    def show
        respond_to do |format|
            format.html
            format.json { render json: @soup }
        end
    end

    def edit
    end

    private

    def fetch_soup
        @soup = Soup.find(params[:id])
    end
end
