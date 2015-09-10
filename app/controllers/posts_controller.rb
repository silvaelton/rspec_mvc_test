class PostsController < ApplicationController

  def index    
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(set_params)
    if @post.save
      redirect_to action: 'index'
    else
      render action: 'new'
    end
  end


  private

  def set_params
    params.require(:post).permit(:title, :content, :published)
  end
end
