class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.float :initial_rating
      t.string :description
      t.string :isbn_10
      t.string :isbn_13

      t.timestamps
    end
  end
end
