class SessionsController < ApplicationController
  def new
    @login_details ||= LoginDetails.new
  end

  def create
    @login_details = LoginDetails.new(login_details_params)
    if @login_details.valid?
      user = User.find_by_email(@login_details.email)
      if user && user.authenticate(@login_details.password)
        session[:user_id] = user.email
        redirect_to candidates_path
      else
        flash.now[:error] = I18n.t :invalid_credentials
        render :new
      end
    else
      render :new
    end
  end

  private

  def login_details_params
    params.require(:session).permit(:email, :password)
  end
end
