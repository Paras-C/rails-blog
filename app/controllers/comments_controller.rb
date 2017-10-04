class CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @comment = @post.comments
  end

  def show
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new    
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    if @comment.save
      redirect_to @post
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.update(comment_params)
    if @comment.save
      redirect_to @post
    else
      render :new
    end
  end

  def destroy
    post = Post.find(params[:post_id])
    post.comments.find(params[:id]).destroy

    redirect_to "/"    
  end

  protected
  def comment_params
    params.require(:comment).permit(:commenter_name, :comment_body)
  end
end
