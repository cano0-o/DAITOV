class CreateTherapists < ActiveRecord::Migration[8.0]
  def change
    create_table :therapists do |t|
      t.string :first_name
      t.string :last_name
      t.string :maternal_surname
      t.integer :age
      t.string :degree
      t.string :session_location
      t.string :password_digest, null: false
      t.string :email, null: false

      t.timestamps
    end

    add_index :therapists, :email, unique: true
  end
end
