# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :user_devise_permitted_parameters, only: [:create]
  
  
  private

  def user_devise_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: [:first_name, :family_name, :first_name_kana, :family_name_kana, :phone_num, :prefecture_id, :city, :address, :buliding_name,
                                             :birthday])
  end
end
