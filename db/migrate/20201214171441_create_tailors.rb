class CreateTailors < ActiveRecord::Migration[6.0]
  def change
    create_table :tailors do |t|
      t.string :shop_name
      t.string :description
      t.string :review
      t.integer :rating

      t.timestamps
    end
  end
end
