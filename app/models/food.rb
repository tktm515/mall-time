class Food < ApplicationRecord
  has_one_attached :image

  has_many: reserves
  belongs_to: tenant

  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :prefecture

  with_options presence: true do
    validates :image
    validates :food_name
    validates :price
    validates :food_text
    validates :tenant_id
  end
end
