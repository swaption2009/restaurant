class RegistrationsController < Devise::RegistrationsController
  module ApplicationHelper

  def create
    super
  end

  protected

  def after_sign_up_path_for(resource)
    setup_organization_path(:organization_setup)
  end

  def update_sanitized_params
    devise_parameters_sanitizer.for(:sign_up) { |u| u.permit(:name, :organization, :email, :password, :password_confirmation, :plan_id) }
  end


  private

  def sign_up_params
    params.require(:user).permit(:name, :organization, :email, :password, :password_confirmation, :current_password)
  end

  def account_update_params
    params.require(:user).permit(:name, :organization, :email, :password, :password_confirmation, :current_password)
  end


end