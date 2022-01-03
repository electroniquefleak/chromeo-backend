class ColorsController < ApplicationController

    def index
        @colors = Color.all
        render json: @colors
    end

    def show
        @color = Color.find(params[:id])
        render json: @color.as_json
    end

    private

    def color_params
        params.require(:color).permit(
            :name,
            :hex,
            :genre
        )
    end

end
