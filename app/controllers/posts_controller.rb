    class PostsController < ApplicationController

        def index
            @posts = Post.all
        end

        def show
            @post = Post.find_by(id: params[:id])
        end

        def new
              @post = Post.new(params[:post])
            # if @post.save
            #   # success
            # else
            #   # error handling
            # end
        end


        def edit
            @post = Post.find_by(id: params[:id])
        end


        def create
            # binding.pry
            @post = Post.new(title: params[:post][:title], description: params[:post][:description])

            respond_to do |format|
              if @post.save
                format.html { redirect_to post_url(@post), notice: "Post was successfully created." }
              else
                format.html { render :new, status: :unprocessable_entity }
              end
            end
        end

        def update
            @post = Post.find_by(id: params[:id])
            @post.update(title: params[:post][:title], description: params[:post][:description])
            redirect_to post_path(@post)
        end

        def destroy
            @post = Post.find(params[:id])
            @post.destroy
            # render json: @post
            redirect_to posts_path
        end
    end