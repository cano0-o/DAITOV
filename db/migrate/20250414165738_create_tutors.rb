class CreateTutors < ActiveRecord::Migration[8.0]
  def change
    create_table :tutors do |t|
      t.string :name
      t.string :paternal_last_name
      t.string :maternal_last_name
      t.string :gender
      t.date :birth_date
      t.string :current_profession
      t.integer :graduation_year
      t.string :institution_name
      t.integer :start_year
      t.string :email
      t.string :phone_number
      t.string :password_digest

      t.timestamps
    end

    add_index :tutors, :email, unique: true
    add_index :tutors, :phone_number, unique: true
  end
end
