class Consumer < ActiveRecord::Base
  attr_accessible :address1, :address2, :city, :country, :email1, :email2, :first_name, :last_name, :middle_name, :phone1, :phone2, :postal_code, :state_province, :stripe_customer_id, :title, :user_id
end
