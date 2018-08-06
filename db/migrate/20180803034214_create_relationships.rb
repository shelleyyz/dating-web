class CreateRelationships < ActiveRecord::Migration[5.2]
  def change

      create_table :relationships do |t|
      t.integer :liker_id
      t.integer :likee_id
      t.text :relationship_status

      t.timestamps
    end
    add_index :relationships, :liker_id
    add_index :relationships, :likee_id
    add_index :relationships, [:liker_id, :likee_id], unique: true

    #  t.boolean :active_relationships

  end

end
