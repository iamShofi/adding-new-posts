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
		
	end

	def update
	end

	def show

		@post =Post.find(params[:id])

	end

	def destroy

	end	
	
	def post_params
		params.require(:post).permit(:title, :price, :body, :category_id)
	end

end
