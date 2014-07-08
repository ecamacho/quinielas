class AddQuinielaRefToUsuarioQuinielas < ActiveRecord::Migration
  def change
    add_reference :usuario_quinielas, :quiniela, index: true
  end
end
