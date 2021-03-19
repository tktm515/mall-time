class TenantsController < ApplicationController

  def show
    @tenant = Tenant.find(params[:id])
  end

  def edit
  end

  def update
    @tenant.update(tenant_params)
    if @tenant.save
      redirect_to tenant_path(@tenant)
    else
      render :edit
    end
  end

  def tenant_params
    params.require(:tenant).permit(:image,:tenant_name, :tenant_ID, :first_name, :family_name, :first_name_kana, :family_name_kana, :hour_id, :minute_id)
  end
end
