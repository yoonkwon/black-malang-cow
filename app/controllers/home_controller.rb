class HomeController < ApplicationController

  def index
    render json: {result: 'home'}
  end
end
