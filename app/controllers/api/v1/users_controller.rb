class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def profile
        render json: {user: UserSerializer.new(current_user)}, status: :accepted
    end

    def show
        user = User.find(params[:id])
        render json: {user: UserSerializer.new(user)}
      end    

    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = issue_token(@user)
            render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
            render json: {error: @user.errors.full_messages}, status: :not_acceptable
        end
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        if user.valid?
          render json: {user: UserSerializer.new(user)}
        else
          render json: {errors: user.errors.full_messages}
        end
      end

    private 
    
    def user_params
        params.require(:user).permit(:id, :first_name, :last_name, :username, :email, :password)
    end
end
