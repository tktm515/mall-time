class Food < ApplicationRecord
  has_one_attached :image
<<<<<<< Updated upstream
=======
  has_many :reserves
  belongs_to :tenant

  
  with_options presence: true do
    validates :image
    validates :food_name
    validates :price
    validates :food_text
    validates :tenant_id
  end
>>>>>>> Stashed changes
end
