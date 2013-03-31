class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.date :birthday
      t.string :type
      t.string :breed
      t.string :gender
      t.string :hobbies
      t.text :description
      t.binary :photo

      t.timestamps
    end
  end
end
