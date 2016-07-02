class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate
    if !signed_in?
      redirect_to new_session_path
    end
  end

  def signed_in?
    current_email.present?
  end

    # This method will return current_email to caller, all references to
    # session[:current_email] would be changed to current_email so if the
    # location of where this is stored changes it would only change here
    # and not all over the application where it is being called
  def current_email
    session[:current_email]
  end

  def sign_in_as(email)
    session[:current_email] =  email
  end

  def current_user
    User.new(current_email)
  end
end
