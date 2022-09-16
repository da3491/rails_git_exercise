class PostsController < ApplicationController
  def create
    @new_post = Post.create(user_id: params[:user_id],content: params[:content])
    render 'posts/create.jbuilder'
  end
end
