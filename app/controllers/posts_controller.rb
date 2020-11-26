class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: "DESC")
  end
 
  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end

  def cheackd
    post = Post.find(params[:id])
    if post.cheackd
      post.update(cheackd: false)
    else  
      post.update(cheackd: true)
    end

    item = Post.find(params[:id])
    render json: { post: item}
  end

end
