class AddGradeIdToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :grade_id, :integer
  end
end
