class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :pet
      t.integer :author
      t.integer :picture
      t.text :story

      t.timestamps
    end
  end
end
