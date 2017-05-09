class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  layout :set_layout

  protected
  def set_layout
    "application"
  end

  def authenticate_patient!
  	redirect_to root_path, notice: "Debes iniciar sesión" unless user_signed_in? && current_user.is_patient? 
  end

  def authenticate_doctor!
  	redirect_to root_path, notice: "No eres un Doctor" unless user_signed_in? && current_user.is_doctor? 
  end

  def authenticate_admin!
  	redirect_to root_path, notice: "No eres un Administrador" unless user_signed_in? && current_user.is_admin? 
  end
end
