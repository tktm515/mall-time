class Food < ApplicationRecord
  has_one_attached :image
  has_many :reserves
  belongs_to :tenant

  
  with_options presence: true do
    validates :image
    validates :food_name, length: { maximum: 15 }
    validates :price
    validates :food_text, length: { maximum: 150 }
    validates :tenant_id
  end
end
