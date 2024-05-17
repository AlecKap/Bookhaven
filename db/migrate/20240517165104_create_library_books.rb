class CreateLibraryBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :library_books do |t|
      t.references :library, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.integer :quality

      t.timestamps
    end
  end
end
