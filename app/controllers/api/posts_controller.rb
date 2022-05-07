class PostsController < ApplicationController

    def index
        @user = User.find_by(id: params[:user_id])
        @post = User.post
        render json: @posts
    end

    def create
        @post = Post.create(post_name: params[:post_name])
        render json: @post
    end

    def destroy
        @user = User.find_by(id: params[:user_id])
        @post = User.post
        @post.destroy
    end

end
