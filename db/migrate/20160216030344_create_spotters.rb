class CreateSpotters < ActiveRecord::Migration
  def change
    create_table :spotters do |t|
      t.references :user, index: true, foreign_key: true
      t.references :spot, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
