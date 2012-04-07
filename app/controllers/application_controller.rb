class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  
  protected

    def authenticate
      deny_access unless signed_in?
    end
  
end
