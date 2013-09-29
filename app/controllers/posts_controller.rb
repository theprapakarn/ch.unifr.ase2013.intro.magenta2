class PostsController < ApplicationController
  
  def new
  end
 
  def index
    @posts = Post.all
  end

  def create
    render text: params[:post].inspect
  end

  def show
    @post = Post.find(params[:id])
  end 
  
  private
    def post_params
      params.require(:post).permit(:title, :text)
    end
end
