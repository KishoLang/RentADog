class Dog < ApplicationRecord
  belongs_to :user
  has_one :booking, dependent: :destroy
  has_one_attached :photo
end
