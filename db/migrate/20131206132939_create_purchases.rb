class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :item
      t.integer :qtd
      t.integer :price
      t.integer :total
      t.string :status

      t.timestamps
    end
  end
end
