class Reserve < ApplicationRecord
  belongs_to: user
  belongs_to: tenant
  has_many: foods

  with_options presence: true do
    validates :user_id
    validates :item_id
    validates :phone_num, format: { with: /\A\d{10,11}\z/ }
  end
end
