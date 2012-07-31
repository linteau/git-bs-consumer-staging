require 'spec_helper'

describe "productfeeds/index" do
  before(:each) do
    assign(:productfeeds, [
      stub_model(Productfeed,
        :id => 1,
        :link => "Link",
        :summary => "MyText",
        :title => "Title"
      ),
      stub_model(Productfeed,
        :id => 1,
        :link => "Link",
        :summary => "MyText",
        :title => "Title"
      )
    ])
  end

  it "renders a list of productfeeds" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
