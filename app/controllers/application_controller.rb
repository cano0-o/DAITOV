class ApplicationController < ActionController::Base
  helper_method :current_tutor

  private

  def current_tutor
    @current_tutor ||= Tutor.find(session[:tutor_id]) if session[:tutor_id]
  end
end
