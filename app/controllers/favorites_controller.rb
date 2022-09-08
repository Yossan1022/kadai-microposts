class FavoritesController < ApplicationController
  before_action :require_user_logged_in

 def create
    @user = current_user.likes.create( params[:microposts_id])
    flash[:success] = 'お気に入りに追加しました。'
    redirect_to @user
  end

  def destroy
    user = User.find(params[:micropost_id])
    current_user.unlike(user)
    flash[:success] = 'ユーザのお気に入りを解除しました。'
    redirect_to user
  end
end