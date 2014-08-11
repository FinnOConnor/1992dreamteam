class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :season
      t.decimal :amount_due
      t.decimal :amount_paid
      t.boolean :paid
      t.integer :player_id

      t.timestamps
    end
  end
end
