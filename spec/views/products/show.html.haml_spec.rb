require 'spec_helper'

describe "products/show" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Product/)
    rendered.should match(/Link/)
    rendered.should match(/MyText/)
    rendered.should match(/Title/)
    rendered.should match(/Brand/)
    rendered.should match(/Color/)
    rendered.should match(/Condition/)
    rendered.should match(/1/)
    rendered.should match(/Image Link/)
    rendered.should match(/Mpn/)
    rendered.should match(/Google Product Category/)
    rendered.should match(/Bs Google Product Category/)
    rendered.should match(/Product Type/)
    rendered.should match(/Size/)
    rendered.should match(/Gender/)
    rendered.should match(/Age Group/)
    rendered.should match(/2/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/Sale Price Effective Date/)
    rendered.should match(/9.99/)
    rendered.should match(/Availability/)
    rendered.should match(/3/)
    rendered.should match(/Adwords Grouping/)
    rendered.should match(/Adwords Redirect/)
  end
end
