class PostsController < ApplicationController
def index
	@posts = Post.all
end

def create
	@post = Post.create(params.require(:post).permit(:title, :author, :publish_date, :publish, :text))
	redirect_to posts_path, notice: 'Post was successfully created.'
end

def new
	@post = Post.new
end

def edit
	@post = Post.find(params[:id])

end

def show
	@post = Post.find(params[:id])
end

def update
	@post = Post.find(params[:id])
	@post.update(params.require(:post).permit(:title, :author, :publish_date, :publish, :text))
	redirect_to @post, notice: 'Post was successfully updated.'
end

def destroy
	@post = Post.find(params[:id])
	@post.destroy
	redirect_to posts_path,	notice: 'Post was successfully destroyed.'
end


end