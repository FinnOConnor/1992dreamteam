class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :coach
      t.string :grade
      t.string :coach_email

      t.timestamps
    end
  end
end
