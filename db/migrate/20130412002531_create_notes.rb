class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :note
      t.integer :note_id

      t.timestamps
    end
    add_index :notes, :note_id
  end
end
