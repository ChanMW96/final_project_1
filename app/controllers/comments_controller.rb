class CommentsController < ApplicationController
  def new
  end

  def create
    @comment = Comment.new(params[:comment])
    if @comment.valid?
      @comment.save
    else
    end
  end

  def edit
    @comment = Comment.find(:comment_id)
  end

  def update
    @comment = Comment.find(:comment_id)
    if @comment.update(params[:comment])
    else
    end
  end

  def destroy
    @comment = Comment.find(:comment_id)
    @comment.destroy
  end
end
