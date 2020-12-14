class AddCityToTailors < ActiveRecord::Migration[6.0]
  def change
    add_column :tailors, :city, :string
  end
end
