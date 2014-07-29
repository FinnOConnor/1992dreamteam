class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :surname
      t.date :dob
      t.string :address
      t.integer :home_phone
      t.string :email
      t.string :school
      t.string :parent_email
      t.integer :school_year
      t.string :next_year_school
      t.string :grade_last_season
      t.boolean :senior
      t.string :team
      t.string :note

      t.timestamps
    end
  end
end
