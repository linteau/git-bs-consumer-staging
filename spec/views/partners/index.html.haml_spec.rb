require 'spec_helper'

describe "partners/index" do
  before(:each) do
    assign(:partners, [
      stub_model(Partner,
        :partner_name => "Partner Name",
        :website => "Website",
        :description => "MyText",
        :title => "Title",
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :state_province => "State Province",
        :postal_code => "Postal Code",
        :country => "Country",
        :phone1 => "Phone1",
        :phone2 => "Phone2",
        :tax_id => "Tax"
      ),
      stub_model(Partner,
        :partner_name => "Partner Name",
        :website => "Website",
        :description => "MyText",
        :title => "Title",
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :state_province => "State Province",
        :postal_code => "Postal Code",
        :country => "Country",
        :phone1 => "Phone1",
        :phone2 => "Phone2",
        :tax_id => "Tax"
      )
    ])
  end

  it "renders a list of partners" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Partner Name".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State Province".to_s, :count => 2
    assert_select "tr>td", :text => "Postal Code".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Phone1".to_s, :count => 2
    assert_select "tr>td", :text => "Phone2".to_s, :count => 2
    assert_select "tr>td", :text => "Tax".to_s, :count => 2
  end
end
