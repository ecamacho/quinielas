class AddUserRefToUsuarioQuinielas < ActiveRecord::Migration
  def change
    add_reference :usuario_quinielas, :user, index: true
  end
end
