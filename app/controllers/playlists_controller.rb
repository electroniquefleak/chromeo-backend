class PlaylistsController < ApplicationController
    def index
        @playlists = Playlist.all
        render json: @playlists
    end

    def show
        @playlist = Playlist.find(params[:id])
        render json: @playlist.as_json
    end

    def create
        @playlist = Playlist.new(playlist_params)
        if @playlist.save
            puts "Playlist created!"
            render json: @playlist
        else
            puts "Error: Failed to compile playlist."
        end
    end

    private

    def playlist_params
        params.require(:playlist).permit(
            :name,
            :playlist_id,
            :spotify_playlist_id)
    end
end
