class TracksController < ApplicationController

    def show
        @track = Track.find(params[:id])
        render json: @track.as_json
    end

    def create
        @track = Track.new(track_params)
        if @track.save
            puts "Track added!"
            render json: @track
        else
            puts "Error: Failed to render track."
        end
    end

    private

    def track_params
        params.require(:track).permit(:spotify_track_id)
    end
    
end