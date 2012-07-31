require 'spec_helper'

describe "productfeeds/edit" do
  before(:each) do
    @productfeed = assign(:productfeed, stub_model(Productfeed,
      :id => 1,
      :link => "MyString",
      :summary => "MyText",
      :title => "MyString"
    ))
  end

  it "renders the edit productfeed form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => productfeeds_path(@productfeed), :method => "post" do
      assert_select "input#productfeed_id", :name => "productfeed[id]"
      assert_select "input#productfeed_link", :name => "productfeed[link]"
      assert_select "textarea#productfeed_summary", :name => "productfeed[summary]"
      assert_select "input#productfeed_title", :name => "productfeed[title]"
    end
  end
end
