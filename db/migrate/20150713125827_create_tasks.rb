class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :aasm_state
      t.integer :start_date
      t.integer :finish_date
      t.references :competition, index: true
      t.timestamps null: false
    end
  end
end
