class SessionsController < ApplicationController
  def new
  end

  def create
      # Cannot do => current_email = params[:session][:email] because this would just create a variable
      # and not use the method we created in applications_controller. So instead we can pass the email to
      # a sigin_in_as method which will then set it appropriate within applications_controller
    sign_in_as params[:session][:email]
    redirect_to root_path
  end
end
