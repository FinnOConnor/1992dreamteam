class AddGradeIdToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :grade_id, :integer
  end
end
