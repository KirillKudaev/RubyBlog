class CommentsController < ApplicationController	
	
	before_action :find_post

	def create
		@comment = Comment.create(comment_params)
		@comment.post = @post

		if @comment.save
			redirect_to(posts_path, notice: "Comment created successfully!")
		else
			render :new
		end
	end




	private

	def find_post
		@post = Post.find(params[:post_id])
	end

	def comment_params
		params.require(:comment).permit(:title)
	end

end