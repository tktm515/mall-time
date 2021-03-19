# frozen_string_literal: true

class Tenants::RegistrationsController < Devise::RegistrationsController
  before_action :tenant_devise_permitted_parameters, only: [:create, :update]

 
  private

  def tarent_params
    params.require(:tarent).permit(:image).merge(tarent_id: current_tenant.id)
  end

  def tenant_devise_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
      keys: [:image,:tenant_name, :tenant_ID, :first_name, :family_name, :first_name_kana, :family_name_kana, :hour_id, :minute_id])
  end
end
  