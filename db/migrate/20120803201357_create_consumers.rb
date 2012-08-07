class CreateConsumers < ActiveRecord::Migration
  def change
    create_table :consumers do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.integer :user_id
      t.integer :stripe_customer_id
      t.string :title
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state_province
      t.string :postal_code
      t.string :country
      t.string :phone1
      t.string :phone2
      t.string :email1
      t.string :email2

      t.timestamps
    end
  end
end
