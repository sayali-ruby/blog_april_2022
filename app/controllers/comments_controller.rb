class CommentController < ApplicationController

	def index
		@comments = Comment.all
	end

	def show
		@comment = Comment.find_by(id: params[:id])
	end

	def new
		@comment = Comment.new(params[:comment])
	end

	def edit
		@comments = Comment.find_by(id: params[:id])
	end

	def create
		@comment = Comment.new(comment: params[:comment][:comment])
			respond_to do |format|
				if @comment.save
					format.html {redirect_to comment_url(@comment)}, notice: "Comment creaed"
				else
					format.html {render :new, status: :unprocessable_entity }
				end
			end
		end

		def update
			@comment = Comment.find_by(id: params[:id])
			@comment.update(comment: params[:comment][:comment])
			redirect_to comment_path(@comment)
		end

		def destroy
			@comment = Comment.find_by(id: params[:id])
			@comment.destroy
			redirect_to comments_path
		end
end
