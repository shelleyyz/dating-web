class CreateMailboxes < ActiveRecord::Migration[5.2]
  def change
    create_table :mailboxes do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.text :content
      t.date :date

      t.timestamps
    end
  end
end
