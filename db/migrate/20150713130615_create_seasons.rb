class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.string :year
      t.integer :win
      t.integer :draw
      t.integer :lose
      t.references :team, index: true
      t.timestamps null: false
    end
  end
end
