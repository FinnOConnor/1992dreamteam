class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|
      t.string :name
      t.string :description
      t.double :cost

      t.timestamps
    end
  end
end
