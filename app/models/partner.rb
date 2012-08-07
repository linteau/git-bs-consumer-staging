class Partner < ActiveRecord::Base
  attr_accessible :address1, :address2, :city, :country, :description, :partner_name, :phone1, :phone2, :postal_code, :state_province, :tax_id, :title, :website
end
