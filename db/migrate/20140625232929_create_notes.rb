class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
    	t.string :title
    	t.text :content
    	t.integer :person_id
    	t.timestamps
    end

    add_index :notes, :person_id
    add_index :notes, :created_at
    add_index :notes, :updated_at
  end
end
