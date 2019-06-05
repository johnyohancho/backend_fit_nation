class MealsController < ApplicationController
    def show
        @meal = Meal.find(params[:id])
        render json: @meal, status: :ok
    end

    def create
        @meal = Meal.new(meal_params)
        if @meal.save!
            render json: @meal, status: :created
        else
            render json: { errors: @meal.errors.full_messages }, status: :unprocessable_entity
        end    
    end

    def update
        @meal = Meal.find(params[:id])
        if @meal.update(meal_params)
            render json: @meal, status: :created
        else
            render json: { errors: @meal.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        @meal = Meal.find(params[:id])
        @meal.destroy
    end

    private

    def meal_params
        params.permit(
            :user_id,
            :name,
            :meal_type,
            :date,
            :time,
            :calories,
            :weight,
            :protein,
            :carbs,
            :fat,
            :sugar
        )
    end
end
