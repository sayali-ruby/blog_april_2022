class Api::V1::ProfileController < ApplicationController

    validates :user_name, presence: true

    belongs_to :user

    def index
        @user = User.find_by(id: params[:user_id])
        @profile = @user.profile
        render json: @profile
    end

    def create
        @profile = Profile.create(user_name: params[:id])
        render json: @profile
    end

    def show
        @profile = Profile.find_by(id: params[:id])
        render json: @profile
    end

    def update
        @user = User.find_by(id: params[:user_id])
        @profile = @user.profile
        @profile.update(user_name: params[:user_name])
        render json: @profile
    end

    def destroy
        @user = User.find_by(id: params[:user_id])
        @profile = @user.profile
        @profile.destroy
    end
end
