class AddVisitaIdToGames < ActiveRecord::Migration
  def change
    add_column :games, :visita_id, :integer
  end
end
