class AddBookToCopies < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :copies, :books
  end
end
