class Book < ApplicationRecord
  has_many :copies, dependent: :destroy
end
