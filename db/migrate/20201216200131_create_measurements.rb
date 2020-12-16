class CreateMeasurements < ActiveRecord::Migration[6.0]
  def change
    create_table :measurements do |t|
      t.integer :bust_separation
      t.integer :high_bust
      t.integer :low_waist
      t.integer :bust
      t.integer :waist
      t.integer :hip
      t.integer :high_hip
      t.integer :shoulder_to_apex
      t.integer :shoulder_to_under_bust
      t.integer :shoulder_to_waist
      t.integer :blouse_length
      t.integer :shoulder_length
      t.integer :across_back
      t.integer :armhole_to_armhole
      t.integer :nape_to_waist
      t.integer :short
      t.integer :three_quarters
      t.integer :long
      t.integer :shoulder_to_elbow
      t.integer :sl_short
      t.integer :sl_half
      t.integer :sl_three_quarters
      t.integer :sl_long
      t.integer :sl_length
      t.integer :around_arm
      t.boolean :gender

      t.timestamps
    end
  end
end
