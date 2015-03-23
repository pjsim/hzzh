class CreateHaggles < ActiveRecord::Migration
  def change
    create_table :haggles do |t|
      t.integer :seller_id, null: false
      t.integer :buyer_id, null: false
      t.integer :status, null: false
      t.references :product, index: true

      t.timestamps
    end
  end
end
