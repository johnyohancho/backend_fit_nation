class UserSettingsController < ApplicationController
    def show
        @user_setting = UserSetting.find(params[:id])
        render json: @user_setting, status: :ok
    end

    def create
        @user_setting = UserSetting.new(user_setting_params)
        if @user_setting.save!
            render json: @user_setting, status: :created
        else
            render json: { errors: @user_setting.errors.full_messages }, status: :unprocessable_entity
        end    
    end

    def update
        @user_setting = UserSetting.find(params[:id])
        if @user_setting.update(user_setting_params)
            render json: @user_setting, status: :created
        else
            render json: { errors: @user_setting.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        @user_setting = UserSetting.find(params[:id])
        @user_setting.destroy
    end

    private

    def user_setting_params
        params.permit(
            :user_id,
            :set_calories,
            :set_steps,
            :set_protein_percent,
            :set_carb_percent,
            :set_fat_percent,
            :set_protein_amount,
            :set_carb_amount,
            :set_fat_amount,
            :set_sugar_amount
        )
    end
end
