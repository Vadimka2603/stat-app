class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.string :link
      t.string :avatar
      t.string :name
      t.timestamps null: false
    end
  end
end