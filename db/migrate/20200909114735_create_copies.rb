class CreateCopies < ActiveRecord::Migration[5.2]
  def change
    create_table :copies do |t|
      t.string :Book_Id
      t.string :Borrower
      t.string :Due_Date
    end
  end
end
