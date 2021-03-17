class FoodsController < ApplicationController

<<<<<<< Updated upstream

  private

  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
=======
  def index
  end

  def new
    @foods = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to root_path
    else
      render :new
    end
  end

  

  private

  def food_params
    params.permit(:food_name, :food_text, :price, :image).merge(tenant_id: current_tenant.id)
>>>>>>> Stashed changes
  end

end
