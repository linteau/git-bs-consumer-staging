class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :partner_name
      t.string :website
      t.text :description
      t.string :title
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state_province
      t.string :postal_code
      t.string :country
      t.string :phone1
      t.string :phone2
      t.string :tax_id

      t.timestamps
    end
  end
end
