class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
        render json: @user.as_json(include: :playlists)
    end

    def create
        @user = User.new(user_params)
        puts "Here's the password length: #{@user.password}"
        if @user.save
            user_with_token(@user)
        else
            puts "Error: Failed to compile user."
            render json: {errors: @user.errors.full_messages}
        end
    end

    private 

    def user_params
        params.permit(:email, :password)
    end
end
