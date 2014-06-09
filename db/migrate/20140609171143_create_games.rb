class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.datetime :fecha
      t.integer :goles_visita
      t.integer :goles_local
      t.boolean :jugado
      t.integer :resultado

      t.timestamps
    end
  end
end
