require 'spec_helper'

describe "products/index" do
  before(:each) do
    assign(:products, [
      stub_model(Product,
        :product_id => "Product",
        :link => "Link",
        :summary => "MyText",
        :title => "Title",
        :brand => "Brand",
        :color => "Color",
        :condition => "Condition",
        :gtin => 1,
        :image_link => "Image Link",
        :mpn => "Mpn",
        :google_product_category => "Google Product Category",
        :bs_google_product_category => "Bs Google Product Category",
        :product_type => "Product Type",
        :size => "Size",
        :gender => "Gender",
        :age_group => "Age Group",
        :item_group_id => 2,
        :price => "9.99",
        :sale_price => "9.99",
        :sale_price_effective_date => "Sale Price Effective Date",
        :bs_ask => "9.99",
        :availability => "Availability",
        :shipping_id => 3,
        :adwords_grouping => "Adwords Grouping",
        :adwords_redirect => "Adwords Redirect"
      ),
      stub_model(Product,
        :product_id => "Product",
        :link => "Link",
        :summary => "MyText",
        :title => "Title",
        :brand => "Brand",
        :color => "Color",
        :condition => "Condition",
        :gtin => 1,
        :image_link => "Image Link",
        :mpn => "Mpn",
        :google_product_category => "Google Product Category",
        :bs_google_product_category => "Bs Google Product Category",
        :product_type => "Product Type",
        :size => "Size",
        :gender => "Gender",
        :age_group => "Age Group",
        :item_group_id => 2,
        :price => "9.99",
        :sale_price => "9.99",
        :sale_price_effective_date => "Sale Price Effective Date",
        :bs_ask => "9.99",
        :availability => "Availability",
        :shipping_id => 3,
        :adwords_grouping => "Adwords Grouping",
        :adwords_redirect => "Adwords Redirect"
      )
    ])
  end

  it "renders a list of products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Product".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => "Condition".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Image Link".to_s, :count => 2
    assert_select "tr>td", :text => "Mpn".to_s, :count => 2
    assert_select "tr>td", :text => "Google Product Category".to_s, :count => 2
    assert_select "tr>td", :text => "Bs Google Product Category".to_s, :count => 2
    assert_select "tr>td", :text => "Product Type".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Age Group".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Sale Price Effective Date".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Availability".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Adwords Grouping".to_s, :count => 2
    assert_select "tr>td", :text => "Adwords Redirect".to_s, :count => 2
  end
end
