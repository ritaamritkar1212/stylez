class CreateSizes < ActiveRecord::Migration[5.0]
  def change
    create_table :sizes do |t|
      t.string :name
      t.integer :bust
      t.integer :waist
      t.integer :hips
      t.integer :across_shouler

      t.timestamps
    end
  end
end
