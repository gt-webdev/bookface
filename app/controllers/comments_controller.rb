class CommentsController < ApplicationController
  def create
    status = Status.find(params[:status_id])
    status.comments.create(user_id:current_user.id, text:params[:comment][:text])
    redirect_to user_path(status.user)
  end
end
