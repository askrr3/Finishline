class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product
      t.integer :seller
      t.integer :amount
      t.integer :buyer

      t.timestamps
    end
  end
end
