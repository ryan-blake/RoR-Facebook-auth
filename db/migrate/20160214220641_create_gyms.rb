class CreateGyms < ActiveRecord::Migration
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end
