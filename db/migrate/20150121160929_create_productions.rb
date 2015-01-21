class CreateProductions < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.integer :director_id
      t.integer :film_id
      t.timestamps null: false
    end
  end
end
