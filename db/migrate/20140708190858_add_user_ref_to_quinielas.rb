class AddUserRefToQuinielas < ActiveRecord::Migration
  def change
    add_reference :quinielas, :user, index: true
  end
end
