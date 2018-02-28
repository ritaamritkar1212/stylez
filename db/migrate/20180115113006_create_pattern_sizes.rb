class CreatePatternSizes < ActiveRecord::Migration[5.0]
  def change
    create_table :pattern_sizes do |t|
      t.integer :pattern_id
      t.integer :size_id
      t.integer :quantity

      t.timestamps
    end
  end
end
