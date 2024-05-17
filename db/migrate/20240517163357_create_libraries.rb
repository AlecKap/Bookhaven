class CreateLibraries < ActiveRecord::Migration[7.0]
  def change
    create_table :libraries do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :charter_number

      t.timestamps
    end
  end
end
