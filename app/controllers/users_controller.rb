class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        render json: @user, status: :ok
    end

    def create
        @user = User.new(user_params)
        if @user.save!
            render json: @user, status: :created
        else
            render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
        end    
    end

    # def edit
    #     @user = User.find(params[:id])
    # end

    # def destroy
    #     @user = User.find(params[:id])
    # end

    private

    def user_params
        params.permit(:username, :password, :email, :name, :description, :gender, :age, :years_exp)
    end
end
