class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in user
      remember user
      params[:session][:remember_me] ? remember(user) : forget(user)
      redirect_to root_path
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid email/password combination' # Not quite right!

      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end
