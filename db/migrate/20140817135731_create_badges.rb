class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.integer :user_id
      t.integer :riddle_id

      t.timestamps
    end
  end
end
