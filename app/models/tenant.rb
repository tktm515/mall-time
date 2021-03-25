class Tenant < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :image
  has_many :foods
  has_many :reserves
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :hour
  belongs_to :minute

  with_options numericality: { other_than: 1 } do
    validates :hour_id
    validates :minute_id
  end

  with_options presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々]+\z/, message: '全角文字を使用してください' } do
    validates :first_name
    validates :family_name
  end

  with_options presence: true, format: { with: /\A[ァ-ヶー－]+\z/, message: '全角カナ文字を使用してください' } do
    validates :first_name_kana
    validates :family_name_kana
  end

  with_options presence: true do
    validates :tenant_phone, format: { with: /\A\d{10,11}\z/ }
    validates :tenant_text, length: { maximum: 150 }
  end

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX
end