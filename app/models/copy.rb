class Copy < ApplicationRecord
  belongs_to :book
  validates :book, :book_id, :borrower, :due_date, presence: true
end
