class Api::V1::MarkersController < ApplicationController

    def create
        @marker = Marker.create(marker_params)
        render json: @marker
    end

    def show
        @marker = Marker.find(params[:id])
        render json: @marker
    end

    def index
        @markers = Marker.all
        render json: @markers
    end

    def destroy
        @marker = Marker.find(params[:id])
        @marker.destroy
    end

    private
    def marker_params
        params.require(:marker).permit(:user_id, :longitude, :latitude, :title, :description)
    end

end
