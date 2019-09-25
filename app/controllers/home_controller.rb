class HomeController < ApplicationController

  def index
    if user_signed_in?
      render json: {result: current_user}
    else
      redirect_to user_signin_path
    end
  end
end
