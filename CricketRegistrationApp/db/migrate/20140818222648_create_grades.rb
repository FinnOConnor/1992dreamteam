class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :grade_name
      t.integer :min_size
      t.integer :max_size
      t.integer :min_age
      t.integer :max_age

      t.timestamps
    end
  end
end
