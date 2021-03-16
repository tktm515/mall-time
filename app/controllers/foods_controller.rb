class FoodsController < ApplicationController

  def index
  end
  

  private

  def message_params
    params.require(:food).permit(:content, :image).merge(tenant_id: current_tenant.id)
  end
end
