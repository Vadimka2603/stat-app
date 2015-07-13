class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :aasm_state
      t.string :competition
      t.integer :start_date
      t.integer :finish_date

      t.timestamps null: false
    end
  end
end
