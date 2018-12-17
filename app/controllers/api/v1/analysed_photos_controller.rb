class Api::V1::AnalysedPhotosController < ApplicationController

    def create
        @analysed_photo = AnalysedPhoto.create(analysed_photo_params)
        render json: @analysed_photo
    end

    def show
        @analysed_photo = AnalysedPhoto.find(params[:id])
        render json: @analysed_photo
    end

    def index
        @analysed_photos = AnalysedPhoto.all
        render json: @analysed_photos
    end

    def destroy
        @analysed_photo = AnalysedPhoto.find(params[:id])
        @analysed_photo.destroy
    end

    private
    def analysed_photo_params
        params.require(:analysed_photo).permit(:user_id, :photoUri, :labels)
    end


end
