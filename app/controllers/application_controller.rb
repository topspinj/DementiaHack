class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
   case current_user.profile_type.downcase
    when "patient"
      return root_path
    when "clinician"
      return root_path
    end
  end
end
