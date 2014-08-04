class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :p_first_name
      t.string :p_surname
      t.string :p_gender
      t.string :p_address
      t.integer :p_home_phone
      t.integer :p_mobile_phone
      t.string :p_email
      t.string :s_first_name
      t.string :s_surname
      t.string :s_gender
      t.string :s_address
      t.integer :s_home_phone
      t.integer :s_mobile_phone
      t.string :s_email

      t.timestamps
    end
  end
end
