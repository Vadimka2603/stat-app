class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :logo
      t.string :name
      t.references :task, index: true
      t.timestamps null: false
    end
  end
end
