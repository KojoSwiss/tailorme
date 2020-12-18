class AddCoordinatesToTailors < ActiveRecord::Migration[6.0]
  def change
    add_column :tailors, :latitude, :float
    add_column :tailors, :longitude, :float
  end
end
