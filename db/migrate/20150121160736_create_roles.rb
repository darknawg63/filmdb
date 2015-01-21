class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|

      t.integer :actor_id
      t.integer :film_id
      t.string :character
      t.timestamps null: false
    end
  end
end
