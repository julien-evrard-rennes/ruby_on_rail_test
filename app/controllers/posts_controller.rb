class PostsController < ApplicationController
  before_action :set_post, only: [ :show, :edit, :update, :destroy ]

  def index
    cookies.permanent.signed[:username] = { values: "Jean-Luc" }
    # session[:user_id] = { username: "Jean-Luc", role: "admin", id: 42 }
    @posts = Post.online(0).alpha.all

    respond_to do |format|
      format.html
      format.json { render json: @posts }
      format.xml  { render xml:  @posts }
    end
  end

  def show
    respond_to do |format|
      format.html
      format.json { render json: @post }
      format.xml  { render xml:  @post }
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path, success: "L'article a bien été mis à jour."
    else
      render :edit
    end
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    if post.valid?
      post.save
      redirect_to posts_path, success: "L'article a bien été créé avec succès."
    else
      @post = post
      render :new
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, success: "L'article a bien été supprimé."
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :slug)
  end

  def set_post
    @post = Post.find(params[:id]) if params[:id]
  end
end
