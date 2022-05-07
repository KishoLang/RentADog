class Dog < ApplicationRecord
  belongs_to :user
  has_one :booking
  has_one_attached :photo
end
