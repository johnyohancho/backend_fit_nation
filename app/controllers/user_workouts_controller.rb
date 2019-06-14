class UserWorkoutsController < ApplicationController
    def show
        @user_workout = UserWorkout.find(params[:id])
        render json: @user_workout, status: :ok
    end

    def create
        @user_workout = UserWorkout.new(user_workout_params)
        if @user_workout.save!
            render json: @user_workout, status: :created
        else
            render json: { errors: @user_workout.errors.full_messages }, status: :unprocessable_entity
        end    
    end

    def update
        @user_workout = UserWorkout.find(params[:id])
        if @user_workout.update(user_workout_params)
            render json: @user_workout, status: :created
        else
            render json: { errors: @user_workout.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        @user_workout = UserWorkout.find(params[:id])
        @user_workout.destroy
    end

    private

    def user_workout_params
        params.permit(
            :user_id,
            :workout_id,
            :workout_type,
            :date,
            :sets,
            :reps
        )
    end
end
