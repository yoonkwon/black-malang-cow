class HomeController < ApplicationController

  def index
    render json: {result: current_user}
  end
end
