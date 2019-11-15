class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:sessions][:email].downcase)
    if user && user.authenticate(params[:sessions][:password])
      # Log the user in and redirect to the user's show page.
      flash[:success] = 'Thank you for signing in!'
      sign_in user
      redirect_to root_path
    else
      # Create an error message.
      flash[:error] = 'Can not verify your email of password'
      render 'new'
    end
  end

  def destroy
  end
end
