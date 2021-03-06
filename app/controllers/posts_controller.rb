class PostsController < ApplicationController

	# http_basic_authenticate_with name: 'rahul', password: '123', except: [:index,:show]

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to @post # or redirect_to post_path
		else
			render 'new' # content is not reset, because page is not reloading
			# redirect_to new_post_path #will reset all fields, because it recalls the page
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		if @post.update(post_params)
			redirect_to @post
		else
			render 'edit'
		end
	end

	def destroy
		@post = Post.find(params[:id])
		if @post.destroy
			redirect_to posts_path
		else
			render 'edit'
		end
	end


	private 

	def post_params
		params.require(:post).permit(:title,:body)
	end

end
