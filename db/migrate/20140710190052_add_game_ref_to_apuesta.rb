class AddGameRefToApuesta < ActiveRecord::Migration
  def change
    add_reference :apuesta, :game, index: true
  end
end
