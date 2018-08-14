class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_dog
    Dog.find_by(id: session[:dog_id])
  end
end
