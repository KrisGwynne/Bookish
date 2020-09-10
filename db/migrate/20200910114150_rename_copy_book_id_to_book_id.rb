class RenameCopyBookIdToBookId < ActiveRecord::Migration[5.2]
  def change
    rename_column :copies, :Book_Id, :book_id
    rename_column :copies, :Borrower, :borrower
    rename_column :copies, :Due_Date, :due_date
  end
end
