class Review < ApplicationRecord
    belongs_to :user
    belongs_to :book
    validates :review_text, presence: true, length: { maximum: 5000 }
    # validates :rating, presence: true, numericality: { greater_than: 0, less_than: 6, only_integer: true }
end
