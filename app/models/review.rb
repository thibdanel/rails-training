class Review < ApplicationRecord
  belongs_to :casque
  # validates :rating, numericality: { less_than_or_equal_to: 5,  only_integer: true }
  # validates :rating, numericality: { more_than_or_equal_to: 0,  only_integer: true }

  AUTHORIZED_RATINGS = (1..5)
  validates :rating, inclusion: { in: AUTHORIZED_RATINGS }


end
