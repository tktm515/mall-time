class ShopsController < ApplicationController
  def index
    @tenants = Tenant.all.order('created_at DESC')
  end
  
  def show
  end
  

end
