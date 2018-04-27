class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :city
      t.date :founded
      t.integer :league_id      

      t.timestamps
    end
  end
end
