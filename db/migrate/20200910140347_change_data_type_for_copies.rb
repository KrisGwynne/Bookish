class ChangeDataTypeForCopies < ActiveRecord::Migration[5.2]
  def change
    change_column :copies, :book_id, :integer
    change_column :copies, :due_date, :date
  end
end
