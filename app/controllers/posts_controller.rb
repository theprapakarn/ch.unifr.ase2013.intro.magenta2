class PostsController < ApplicationController
  
  def new
    @post = Post.new
  end
 
  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(params[:post].permit(:title, :text))
    @post.save
    redirect_to @post
    end
  end

  def show
    @post = Post.find(params[:id])
  end 
  
  private
    def post_params
      params.require(:post).permit(:title, :text)
    end
end
