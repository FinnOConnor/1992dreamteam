class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :surname
      t.string :gender
      t.date :date_of_birth
      t.string :address
      t.integer :contact_phone
      t.string :email
      t.string :school
      t.integer :school_year
      t.string :school_next_year
      t.string :grade_last_season
      t.boolean :senior
      t.text :notes
      t.integer :team_id
      t.integer :parent_id

      t.timestamps
    end
  end
end
