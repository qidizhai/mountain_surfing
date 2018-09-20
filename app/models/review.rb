class Review < ApplicationRecord
  validates :rating, inclusion: { in: (1..5) }
  validates :body, :house_id, :author_id, presence: true

  belongs_to :house
  belongs_to :author,
    class_name: :User
end
