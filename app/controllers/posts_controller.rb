class PostsController < ApplicationController

	def index
		@posts = Post.all
	end
	
	def new
		@post = Post.new
		@category = Category.all
	end

	def create
		@post = Post.new(post_params)
			if @post.save
				redirect_to posts_path, :notice => "Post created successfully"
			else
				render "new"
			end	
	end

	def edit
		
		@post =Post.find(params[:id])

	end

	def update

		@post =Post.find(params[:id])	
		if @post.update_attributes(post_params)
			redirect_to post_path, :notice => "Post Updated"

			else
				render "edit"
			end	
	end

	def show

		@post =Post.find(params[:id])

	end

	def destroy

		@post =Post.find(params[:id])
		@post.destroy
		redirect_to posts_path, :notice => "Post deleted"

	end	
	
	def post_params
		params.require(:post).permit(:title, :price, :body, :category_id, :picture)
	end

end
