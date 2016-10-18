class PostsController < ApplicationController
  def new

  end

  def create
  	@post = Post.new(params.require(:post).permit(:id,:title, :content))

	if @post.save
		redirect_to action: 'show', id: @post.id
	else
		render "new"
	end
  end

  def show 
  	@post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def delete

  end
end
