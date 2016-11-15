class Review < ActiveRecord::Base
  belongs_to :product

  validates :product_id, presence: true, numericality: { only_integer: true }
  validates :user_id, presence: true, numericality: { only_integer: true }
  validates :description, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }
end
