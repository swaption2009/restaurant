class Tenant
  def restorans
    owner? ? Restoran.all.all : Restoran.where('organization_id = ?', user.organizations.first.id).all
  end
end