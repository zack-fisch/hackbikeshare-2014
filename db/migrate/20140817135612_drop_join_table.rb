class DropJoinTable < ActiveRecord::Migration
  def change
  	drop_table :riddles_users
  end
end
