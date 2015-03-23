class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.text :description
      t.decimal :price
      t.references :user, index: true

      t.timestamps
    end
  end
end
