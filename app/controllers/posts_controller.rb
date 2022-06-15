    class PostsController < ApplicationController

        before_action :fetch_post, except: [:new, :index, :create]

        def index
            @posts = Post.all
        end

        def show
            
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
            
            @post.update(title: params[:post][:title], description: params[:post][:description])
            redirect_to post_path(@post)
        end

        def destroy
            
            @post.destroy
            # render json: @post
            redirect_to posts_path
        end

        def fetch_post
            @post = Post.find_by(id: params[:id])
        end
    end