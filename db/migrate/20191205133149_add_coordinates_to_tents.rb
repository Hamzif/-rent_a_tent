class AddCoordinatesToTents < ActiveRecord::Migration[5.2]
  def change
    add_column :tents, :latitude, :float
    add_column :tents, :longitude, :float
  end
end
