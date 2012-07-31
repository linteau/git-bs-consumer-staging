require 'spec_helper'

describe "productfeeds/show" do
  before(:each) do
    @productfeed = assign(:productfeed, stub_model(Productfeed,
      :id => 1,
      :link => "Link",
      :summary => "MyText",
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Link/)
    rendered.should match(/MyText/)
    rendered.should match(/Title/)
  end
end
