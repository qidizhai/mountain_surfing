class Review < ApplicationRecord
  validates :rating, inclusion: { in: (1..5) }

  belongs_to :house
  belongs_to :author,
    class_name: :User
end
