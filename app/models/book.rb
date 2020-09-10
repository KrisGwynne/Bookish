class Book < ApplicationRecord
  has_many :copies, foreign_key: :book_id, dependent: :destroy
  validates :Title, :Author, :ISBN, presence: true
end
