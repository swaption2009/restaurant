class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include Concerns::Url

  before_action :enable_tenant

  def enable_tenant
    @current_tenant ||= Tenant.new(current_user.organization)
  end

end
