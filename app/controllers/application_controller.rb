class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
      end
      helper_method :current_user

      def authorize
        redirect_to '/login' unless current_user
      end

      def check_owner
        book = Book.find(params[:id])
        redirect_to '/' unless book.user_id == current_user.id
      end

end
