class Reserve < ApplicationRecord
  belongs_to: user
  belongs_to: tenant
  has_many: foods

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :hour
  belongs_to :minute

  with_options presence: true do
    validates :user_id
    validates :item_id
    validates :phone_num, format: { with: /\A\d{10,11}\z/ }
  end

  with_options numericality: { other_than: 1 } do
    validates :hour_id
    validates :minute_id
  end
end
