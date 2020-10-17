class PostsController < ApplicationController

def index
  @posts = Post.all.order(id: "DESC")
end

def create
  Post.create(content: params[:contnt])
  redirect_to action: :index
end

end
