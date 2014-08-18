class RemoveGradeFromTeams < ActiveRecord::Migration
  def change
    remove_column :teams, :grade, :string
  end
end
