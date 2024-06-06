class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    
    # Deviseヘルパーメソッドを全てのビューで使用できるようにする
    helper_method :user_signed_in?, :current_user, :user_session
  end
  