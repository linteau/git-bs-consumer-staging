class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_id
      t.string :link
      t.text :summary
      t.string :title
      t.datetime :updated
      t.string :brand
      t.string :color
      t.string :condition
      t.integer :gtin
      t.string :image_link
      t.string :mpn
      t.string :google_product_category
      t.string :bs_google_product_category
      t.string :product_type
      t.string :size
      t.string :gender
      t.string :age_group
      t.integer :item_group_id
      t.decimal :price
      t.decimal :sale_price
      t.string :sale_price_effective_date
      t.decimal :bs_ask
      t.string :availability
      t.integer :shipping_id
      t.string :adwords_grouping
      t.string :adwords_redirect

      t.timestamps
    end
  end
end
