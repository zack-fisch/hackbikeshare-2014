class AddBadgeToRiddles < ActiveRecord::Migration
  def change
    add_column :riddles, :badge, :string
  end
end
