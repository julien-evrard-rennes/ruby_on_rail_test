class PostsController < ApplicationController
  before_action :set_post, only: [ :show, :edit, :update, :destroy ]

  def index
    cookies.permanent.signed[:username] = { values: "Jean-Luc" }
    session[:user_id] = { username: "Jean-Luc", role: "admin", id: 42 }
    @posts = Post.all
  end

  def show
  end

  def edit
  end

  def update
    @post.update(post_params)
    redirect_to post_path(@post.id), success: "L'article a bien été mis à jour."
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create(post_params)
    redirect_to posts_path(post.id), success: "L'article a bien été créé avec succès."
  end

  def destroy
    @post.destroy
    redirect_to posts_path, success: "L'article a bien été supprimé."
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

  def set_post
    @post = Post.find(params[:id]) if params[:id]
  end
end
