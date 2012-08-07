class AddColumnsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :bs_sale_date, :datetime
  end
end
