class CreateRelationshipsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships_users, :id => false do |t|
      t.integer :relationship_id
      t.integer :user_id
    end
  end
end
