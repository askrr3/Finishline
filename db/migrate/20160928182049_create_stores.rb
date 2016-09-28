class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :product
      t.integer :amount
      t.integer :seller

      t.timestamps
    end
  end
end
