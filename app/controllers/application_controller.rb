class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_dog
    Dog.find(session[:dog_id])
  end
end
