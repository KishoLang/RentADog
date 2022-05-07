class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dog, dependent: :destroy
end
