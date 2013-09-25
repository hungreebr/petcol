class AddPetIdToPosts < ActiveRecord::Migration
def change
    add_column :posts, :pet_id, :integer
    add_index :posts, :pet_id
  end
end
