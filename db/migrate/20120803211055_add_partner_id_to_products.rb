class AddPartnerIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :partner_id, :integer
  end
end
