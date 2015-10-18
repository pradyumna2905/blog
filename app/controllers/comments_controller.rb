class CommentsController < ApplicationController
before_action :set_article

  def create
    unless current_user
      flash[:danger] = "Please log in or sign up"
      redirect_to new_user_session_path
    else
      @comment = @article.comments.build(comment_params)
      @comment.user = current_user

      if @comment.save
        flash[:success] = "Your comment has been posted"
      else
        flash[:danger] = "Your comment could not be posted"
      end
      redirect_to article_path(@article)
    end
  end


    private

    def comment_params
      params.require(:comment).permit(:body)
    end

    def set_article
      @article = Article.find(params[:article_id])
    end

end
