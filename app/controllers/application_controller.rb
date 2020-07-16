class ApplicationController < ActionController::API

before_action :authorized

    JWT_SECRET_KEY = ENV['secret_key']

    def issue_token(user)
        JWT.encode({user_id: user.id, greeting: "030920"}, 'a92887b2c3540ac08d78d6b8680e485e1308332ed10e4e09f265a0dd66eb6f48', 'HS256')
    end

    def current_user
        @user ||= User.find_by(id: user_id)
    end

    def token
        request.headers['Authorization']
    end

    def decoded_token
        begin
            JWT.decode(token, `#{JWT_SECRET_KEY}`, true, {:algorithm => 'HS256'})
        rescue JWT::DecodeError
            [{error: "Invalid Token"}]
        end
    end

    def user_id
        decoded_token.first['user_id']
    end

    def logged_in?
        !!current_user
    end

    def authorized
        render json: {message: 'Please log in'}, status: :unauthorized unless logged_in?
    end
    
end
