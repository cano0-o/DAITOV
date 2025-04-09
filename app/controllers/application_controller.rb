class ApplicationController < ActionController::Base
  helper_method :current_therapist

  private

  def current_therapist
    @current_therapist ||= Therapist.find(session[:therapist_id]) if session[:therapist_id]
  end
end
