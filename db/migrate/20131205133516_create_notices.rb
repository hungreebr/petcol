class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :title
      t.text :text
      t.string :icon

      t.timestamps
    end
  end
end
