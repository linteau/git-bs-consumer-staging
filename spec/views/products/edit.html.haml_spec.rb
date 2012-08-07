require 'spec_helper'

describe "products/edit" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :product_id => "MyString",
      :link => "MyString",
      :summary => "MyText",
      :title => "MyString",
      :brand => "MyString",
      :color => "MyString",
      :condition => "MyString",
      :gtin => 1,
      :image_link => "MyString",
      :mpn => "MyString",
      :google_product_category => "MyString",
      :bs_google_product_category => "MyString",
      :product_type => "MyString",
      :size => "MyString",
      :gender => "MyString",
      :age_group => "MyString",
      :item_group_id => 1,
      :price => "9.99",
      :sale_price => "9.99",
      :sale_price_effective_date => "MyString",
      :bs_ask => "9.99",
      :availability => "MyString",
      :shipping_id => 1,
      :adwords_grouping => "MyString",
      :adwords_redirect => "MyString"
    ))
  end

  it "renders the edit product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => products_path(@product), :method => "post" do
      assert_select "input#product_product_id", :name => "product[product_id]"
      assert_select "input#product_link", :name => "product[link]"
      assert_select "textarea#product_summary", :name => "product[summary]"
      assert_select "input#product_title", :name => "product[title]"
      assert_select "input#product_brand", :name => "product[brand]"
      assert_select "input#product_color", :name => "product[color]"
      assert_select "input#product_condition", :name => "product[condition]"
      assert_select "input#product_gtin", :name => "product[gtin]"
      assert_select "input#product_image_link", :name => "product[image_link]"
      assert_select "input#product_mpn", :name => "product[mpn]"
      assert_select "input#product_google_product_category", :name => "product[google_product_category]"
      assert_select "input#product_bs_google_product_category", :name => "product[bs_google_product_category]"
      assert_select "input#product_product_type", :name => "product[product_type]"
      assert_select "input#product_size", :name => "product[size]"
      assert_select "input#product_gender", :name => "product[gender]"
      assert_select "input#product_age_group", :name => "product[age_group]"
      assert_select "input#product_item_group_id", :name => "product[item_group_id]"
      assert_select "input#product_price", :name => "product[price]"
      assert_select "input#product_sale_price", :name => "product[sale_price]"
      assert_select "input#product_sale_price_effective_date", :name => "product[sale_price_effective_date]"
      assert_select "input#product_bs_ask", :name => "product[bs_ask]"
      assert_select "input#product_availability", :name => "product[availability]"
      assert_select "input#product_shipping_id", :name => "product[shipping_id]"
      assert_select "input#product_adwords_grouping", :name => "product[adwords_grouping]"
      assert_select "input#product_adwords_redirect", :name => "product[adwords_redirect]"
    end
  end
end
