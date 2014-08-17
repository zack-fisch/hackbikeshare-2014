class CreateRiddlesUsers < ActiveRecord::Migration
  def change
    create_table :riddles_users do |t|
      t.integer :user_id
      t.integer :riddle_id

      t.timestamps
    end
  end
end
