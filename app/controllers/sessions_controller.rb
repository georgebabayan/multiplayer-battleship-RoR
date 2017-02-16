class SessionsController < ApplicationController

  def new
    render 'login'
  end

  def create
    @user = User.find_by(username: params[:username])

    if user.authenticate(params[:password])
      login(@user)
      redirect_to root_path
    else
      @error = "Your username or password are invalid"
      render :new
    end
  end

  def delete(???)
    logout

    redirect_to root_path
  end

end