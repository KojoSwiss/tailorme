class RenameCityToAddressInTailors < ActiveRecord::Migration[6.0]
  def up
    rename_column :tailors, :city, :address
  end

  def down
    rename_column :tailors, :address, :city
  end
end
