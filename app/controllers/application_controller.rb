class ApplicationController < ActionController::API
    def encode_token(user_id)
        JWT.encode({user_id: user_id}, ENV["JWT_SECRET"])
    end

    def user_with_token(user)
        render json: {user: user, token: encode_token(user.id)}
    end
end
