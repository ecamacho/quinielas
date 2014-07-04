class CreateQuinielas < ActiveRecord::Migration
  def change
    create_table :quinielas do |t|
      t.string :nombre
      t.string :creador
      t.integer :id_quiniela

      t.timestamps
    end
  end
end
