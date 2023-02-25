class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id]) 
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post,notice: 'Post criado com sucesso'
    else
      render :new
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post, notice: 'Post foi atualizado com sucesso'
    else
      render :edit
    end
  end

  def destroy
  end

  private 
    def post_params
      params.require(:post).permit(:title,:body)
    end
end
