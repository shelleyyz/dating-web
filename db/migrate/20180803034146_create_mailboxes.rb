class CreateMailboxes < ActiveRecord::Migration[5.2]
  def change
    create_table :mailboxes do |t|
      t.integer :sender_id
      t.text :content
      t.integer :conversation_id
      t.timestamps
    end
  end
end
