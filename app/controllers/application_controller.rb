class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end

def score_key
    @@score_key ||= SecureRandom.uuid
end

def get_score
   if session[:score_key] == score_key
      session[:score]
   else
      0
   end
end

def save_score score
   session[:score] = score
   session[:score_key] = score_key
end
