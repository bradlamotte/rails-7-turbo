class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    @current_user ||= User.first_or_create(first: 'Brad')
  end
end
