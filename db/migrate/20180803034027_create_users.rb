class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :first_name
      t.text :last_name
      t.text :interests
      t.text :email
      t.text :image
      t.text :gender
      t.date :dob
      t.text :location
      t.text :language
      t.text :bio
      t.boolean :admin

      t.timestamps
    end
  end
end
