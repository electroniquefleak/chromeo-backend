class SessionsController < ApplicationController

    def create
        user = User.find_by_email(params[:email])
        puts user
        if user && user.authenticate(params[:password])
            user_with_token(user)
        else
            render json: {errors: "Invalid credentials"}, status: :forbidden
        end
    end
end