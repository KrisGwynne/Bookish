class AddDetailsToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :Title, :string
    add_column :books, :Author, :string
    add_column :books, :ISBN, :string
  end
end
