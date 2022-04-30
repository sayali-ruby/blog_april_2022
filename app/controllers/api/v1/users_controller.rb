class Api::V1::UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find_by(params[:id])
        render json: @user
    end

    def create
        @user = User.create(email: params[:email],first_name: params[:first_name],last_name: params[:last_name])
        render json: @user
    end

    def update
        @user = User.find_by(id: params[:id])
        User.update(email: params[:email],first_name: params[:first_name],last_name: params[:last_name])
        render json: @user
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: @user
    end
end
