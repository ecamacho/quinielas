class RemoveColumnfromQuinielas < ActiveRecord::Migration
  def change
  	remove_column :quinielas, :id_quiniela
  	remove_column :quinielas, :creador  
  end
end
