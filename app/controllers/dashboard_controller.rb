class DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :load_subdomain

  def show
    @user = User.where(:name => request.subdomain).first || not_found
    @user.organizations.each do |o|
      @organization_name = o.name
    end
  end

  def not_found
    raise ActionController::RoutingError.new('User Not Found')
  end

  def load_subdomain
    @user = User.where(:name => request.subdomain).first
  end

end
