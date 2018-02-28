class RanameQuantity < ActiveRecord::Migration[5.0]
  def change
  	   rename_column :quantities, :quantity, :no_of_pieces
  end
end
