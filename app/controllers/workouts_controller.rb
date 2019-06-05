class WorkoutsController < ApplicationController
    def show
        @workout = Workout.find(params[:id])
        render json: @workout, status: :ok
    end

    def create
        @workout = Workout.new(workout_params)
        if @workout.save!
            render json: @workout, status: :created
        else
            render json: { errors: @workout.errors.full_messages }, status: :unprocessable_entity
        end    
    end

    def update
        @workout = Workout.find(params[:id])
        if @workout.update(workout_params)
            render json: @workout, status: :created
        else
            render json: { errors: @workout.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        @workout = Workout.find(params[:id])
        @workout.destroy
    end

    private

    def workout_params
        params.permit(:name, :description, :sets, :reps)
    end
end
