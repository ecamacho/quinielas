class CreateStages < ActiveRecord::Migration
  def change
    create_table :stages do |t|
      t.string :fase

      t.timestamps
    end
  end
end
