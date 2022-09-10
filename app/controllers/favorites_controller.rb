class FavoritesController < ApplicationController
  before_action :require_user_logged_in

 def create
   @user = current_user.likes.create( params[:favorites_id])
   post = Micropost.find(params[:micropost_id])
    current_user.like(post)
    flash[:success] = 'お気に入りに追加しました。'
    redirect_to '/'
  end
  def destroy
    post = Micropost.find(params[:micropost_id])
    current_user.unlike(post)
    flash[:success] = 'ユーザのお気に入りを解除しました。'
    redirect_to '/'
  end
end