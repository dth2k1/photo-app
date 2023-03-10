class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :payment
  accepts_nested_attributes_for :payment, reject_if: :all_blank?, allow_destroy: true
  has_many :images
end
