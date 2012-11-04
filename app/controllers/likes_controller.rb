class LikesController < ApplicationController
  def create
    status = Status.find(params[:status_id])
    status.likes.create(user_id:current_user.id)
    redirect_to user_path(status.user)
  end
  def destroy
    status = Like.find(params[:id]).destroy
    redirect_to user_path(status.user)
  end
end
