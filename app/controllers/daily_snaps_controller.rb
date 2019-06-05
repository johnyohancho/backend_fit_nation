class DailySnapsController < ApplicationController
    def show
        @daily_snap = DailySnap.find(params[:id])
        render json: @daily_snap, status: :ok
    end

    def create
        @daily_snap = DailySnap.new(daily_snap_params)
        if @daily_snap.save!
            render json: @daily_snap, status: :created
        else
            render json: { errors: @daily_snap.errors.full_messages }, status: :unprocessable_entity
        end    
    end

    def update
        @daily_snap = DailySnap.find(params[:id])
        if @daily_snap.update(daily_snap_params)
            render json: @daily_snap, status: :created
        else
            render json: { errors: @daily_snap.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        @daily_snap = DailySnap.find(params[:id])
        @daily_snap.destroy
    end

    private

    def daily_snap_params
        params.permit(
            :user_id,
            :date,
            :steps,
            :weight,
            :height,
            :bmi,
            :pbf,
            :img,
            :calories,
            :protein,
            :carbs,
            :fat,
            :sugar,
        )
    end
end
