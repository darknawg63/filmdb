class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.string :fname
      t.string :lname
      t.timestamps null: false
    end
  end
end
