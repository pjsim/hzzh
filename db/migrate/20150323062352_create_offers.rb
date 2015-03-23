class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.integer :intention, null: false
      t.decimal :price
      t.references :haggle, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
