class AddStageRefToGames < ActiveRecord::Migration
  def change
    add_reference :games, :stage, index: true
  end
end
