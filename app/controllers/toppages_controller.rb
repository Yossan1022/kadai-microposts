class ToppagesController < ApplicationController
  def index
    if logged_in?
      @micropost = current_user.microposts.build
      @pagy, @microposts = pagy(current_user.feed_microposts.order(id: :desc))
      
    end
  end
  def micropost
    user = User.find(params[:id])
    @current_user = current_user.microposts
end
end