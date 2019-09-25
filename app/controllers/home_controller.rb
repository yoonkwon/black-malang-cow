class HomeController < ApplicationController

  def index
    if user_signed_in?
      render json: {result: current_user}
    else
      render json: {result: nil}
    end
  end
end
