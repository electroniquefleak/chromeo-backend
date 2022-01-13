class PlaylistsController < ApplicationController
    def show
        @playlist = Playlist.find(params[:id])
        render json: @playlist.as_json
    end

    def create
        @playlist = Playlist.new(playlist_params)
        tracksHash = {tracks: params[:tracks]} 
        if @playlist.save
            puts "Playlist created!"
            render json: @playlist
        else
            puts "Error: Failed to create a playlist."
        end
    end

    private

    def playlist_params
        params.require(:playlist).permit(:name, :user_id, :tracks => [:spotifyID, :art, :explicit, :title, :artist, :length])
    end
end
