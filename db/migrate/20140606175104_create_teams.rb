class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :nombre
      t.string :bandera
      t.string :abreviatura

      t.timestamps
    end
  end
end
