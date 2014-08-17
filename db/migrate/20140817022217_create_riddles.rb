class CreateRiddles < ActiveRecord::Migration
  def change
    create_table :riddles do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.text :riddle

      t.timestamps
    end
  end
end
