class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.string :first_name
      t.string :surname
      t.string :gender
      t.string :address
      t.integer :home_phone
      t.integer :mobile
      t.string :email

      t.timestamps
    end
  end
end
