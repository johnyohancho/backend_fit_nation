class SessionsController < ApplicationController
    def create
        @user = User.find_by(username: params[:username])
        byebug
        if @user && @user.authenticate(params[:password])
            token = JWT.encode({ user_id: @user.id }, '1234', 'HS256')
            render json: { token: token }, status: :ok
        else
            render json: { errors: ["Incorrect username or password"] },
                         status: :unauthorized
        end
    end
end