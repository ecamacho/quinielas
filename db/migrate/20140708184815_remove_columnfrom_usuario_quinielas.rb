class RemoveColumnfromUsuarioQuinielas < ActiveRecord::Migration
  def change
  	remove_column :usuario_quinielas, :id_quiniela
  	 
  end
end
