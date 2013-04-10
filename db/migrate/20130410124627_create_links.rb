class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :name
      t.boolean :read
      t.integer :user_id

      t.timestamps
    end
    add_index :links, :user_id
  end
end
