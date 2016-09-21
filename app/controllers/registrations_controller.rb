class RegistrationsController < Devise::RegistrationsController

  def create
    super
  end

  protected

  def after_sign_up_path_for(resource)
    setup_organization_path(:organization_setup)
  end


  private

  def sign_up_params
    params.require(:user).permit(:name, :organization, :email, :password, :password_confirmation, :current_password)
  end

  def account_update_params
    params.require(:user).permit(:name, :organization, :email, :password, :password_confirmation, :current_password)
  end


end