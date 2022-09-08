module SessionsHelper
  #def current_user は、現在ログインしているユーザを取得するメソッド
    def current_user
      #@すでに現在のログインユーザが代入されていたら何もせず、代入されていなかったら User.find_by(...) からログインユーザを取得し、@current_user に代入
    @current_user ||= User.find_by(id: session[:user_id])
  end
# def logged_in?はユーザがログインしていれば true を返し、ログインしていなければ false を返します。
  def logged_in?
    #ログインしていれば true が返され,していなければ current_user は nil を返します。
    !!current_user
  end
end
