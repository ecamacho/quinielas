class CreateUsuarioQuinielas < ActiveRecord::Migration
  def change
    create_table :usuario_quinielas do |t|
      t.string :usuario
      t.string :quiniela
      t.integer :id_quiniela
      t.integer :usuario_id
      t.integer :puntos

      t.timestamps
    end
  end
end
