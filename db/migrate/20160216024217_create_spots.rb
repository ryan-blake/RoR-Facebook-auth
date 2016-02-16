class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.string :title
      t.integer :weight
      t.integer :time
      t.string :body
      t.references :user, index: true, foreign_key: true
      t.references :gym, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
