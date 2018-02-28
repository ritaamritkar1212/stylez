class CreatePatterns < ActiveRecord::Migration[5.0]
  def change
    create_table :patterns do |t|
      t.string :name
      t.text :description
      t.float :wholesale_price
      t.float :retail_price
      t.integer :quantity

      t.timestamps
    end
  end
end
