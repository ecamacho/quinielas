class AddLocalIdToGames < ActiveRecord::Migration
  def change
    add_column :games, :local_id, :integer
  end
end
