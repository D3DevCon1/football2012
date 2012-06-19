class ApplicationController < ActionController::Base
  protect_from_forgery
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, :flash => { :alert => exception.message }#:alert => exception.message
  end
end
