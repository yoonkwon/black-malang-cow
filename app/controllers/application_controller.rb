class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  def after_sign_in_path_for(resource)
    stored_location_for(resource) || home_index_path
  end
  def after_sign_out_path_for(resource)
    stored_location_for(resource) || user_signin_path
  end
end
