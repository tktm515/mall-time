class ReservesController < ApplicationController

  def index
    @foods = Food.all.order('created_at DESC')
    @tenant = Tenant.find(params[:tenant_id])
  end

  def new
    @reserve = Reserve.new
  end

  def created
    @reserve = Reserve.new(reserve_params)
    if @reserve.save
      redirect_to root_path
    else
      render :index
    end
  end

  private
  def reserve_params
    params.permit(:food_id, :price, :hour_id, :minute_id).merge(tenant_id: tenant_id, user_id: current_user_id)
  end
end
