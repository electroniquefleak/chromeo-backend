class TracksController < ApplicationController
    def show
        @track = Track.find(params[:id])
        render json: @track.as_json
    end
end
