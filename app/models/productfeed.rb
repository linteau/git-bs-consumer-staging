class Productfeed < ActiveRecord::Base
  attr_accessible :id, :link, :summary, :title, :updated
end
