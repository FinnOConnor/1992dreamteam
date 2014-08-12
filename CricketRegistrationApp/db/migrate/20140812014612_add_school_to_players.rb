class AddSchoolToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :school, :string
  end
end
