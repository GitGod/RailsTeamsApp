class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :surname
      t.date :born
      t.string :country
      t.string :position

      t.timestamps
    end
  end
end
