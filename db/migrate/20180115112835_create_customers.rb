class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :gst_no
      t.string :address
      t.string :pan_no

      t.timestamps
    end
  end
end
