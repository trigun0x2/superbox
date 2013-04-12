class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :link
      t.boolean :read, :default => false
      t.integer :link_id

      t.timestamps
    end
    add_index :links, :link_id
    add_index :links, :link
  end
end
