class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def profile
        render json: {user: UserSerializer.new(current_user)}, status: :accepted
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = issue_token(user)
            render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
            render json: {error: @user.errors.full_messages}, status: :not_acceptable
        end
    end

    private 
    
    def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :email, :password)
    end
end
