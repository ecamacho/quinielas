class RemoveColumnsfromUsuarioQuinielas < ActiveRecord::Migration
  def change
  	remove_column :usuario_quinielas, :usuario 
  	remove_column :usuario_quinielas, :quiniela 
  	remove_column :usuario_quinielas, :usuario_id
  end
end
