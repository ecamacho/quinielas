class CreateApuesta < ActiveRecord::Migration
  def change
    create_table :apuesta do |t|
      t.references :user, index: true
      t.references :quiniela, index: true
      t.references :stage, index: true
      t.references :match, index: true
      t.integer :resultado
      t.integer :puntos

      t.timestamps
    end
  end
end
