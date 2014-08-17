class ChangeAddressToName < ActiveRecord::Migration
  def change
  	remove_column :riddles, :address
  	add_column :riddles, :name, :string
  end
end
