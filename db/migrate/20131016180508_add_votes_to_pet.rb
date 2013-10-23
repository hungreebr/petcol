class AddVotesToPet < ActiveRecord::Migration
  def change
    add_column :pets, :votes, :integer, default: 0
  end
end
