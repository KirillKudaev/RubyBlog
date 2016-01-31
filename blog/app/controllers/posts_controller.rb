class PostsController < ApplicationController


	def index
		@posts = Post.all
	end
  

	def show
		@post = Post.find(params[:id])
		@comment = Comment.new(params[:@post])
	end
  

	def new
		@post = Post.new
	end
	

	def create
		@post = Post.new(post_params) 	#initializing @post instance variable to a new instance of Post model using available params
		if @post.save
			redirect_to(posts_path, notice: "Post created successfully!")
		else
			render :new
		end
	end


	def edit
		@post = Post.find(params[:id])
	end


	def update
		@post = Post.find(params[:id])

		if @post.update_attributes(post_params)
			redirect_to(posts_path, notice: "Post updated successfully!")
		else
			redirect_to(edit_post_path, notice: "Sorry, something went wrong.")
		end

	end


	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to(posts_path, notice: "Post was deleted!")
	end



	private

	def post_params
		params.require(:post).permit(:title, :body)
	end

end
