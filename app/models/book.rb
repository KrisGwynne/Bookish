class Book < ApplicationRecord
  has_many :copies, dependent: :destroy
  validates :Title, :Author, :ISBN, presence: true
end
