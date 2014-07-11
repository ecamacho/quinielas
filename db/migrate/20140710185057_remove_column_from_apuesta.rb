class RemoveColumnFromApuesta < ActiveRecord::Migration
  def change
  remove_column :apuesta, :match_id

  end
end
