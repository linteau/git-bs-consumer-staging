require 'spec_helper'

describe "consumers/index" do
  before(:each) do
    assign(:consumers, [
      stub_model(Consumer,
        :first_name => "First Name",
        :middle_name => "Middle Name",
        :last_name => "Last Name",
        :user_id => 1,
        :stripe_customer_id => 2,
        :title => "Title",
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :state_province => "State Province",
        :postal_code => "Postal Code",
        :country => "Country",
        :phone1 => "Phone1",
        :phone2 => "Phone2",
        :email1 => "Email1",
        :email2 => "Email2"
      ),
      stub_model(Consumer,
        :first_name => "First Name",
        :middle_name => "Middle Name",
        :last_name => "Last Name",
        :user_id => 1,
        :stripe_customer_id => 2,
        :title => "Title",
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :state_province => "State Province",
        :postal_code => "Postal Code",
        :country => "Country",
        :phone1 => "Phone1",
        :phone2 => "Phone2",
        :email1 => "Email1",
        :email2 => "Email2"
      )
    ])
  end

  it "renders a list of consumers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Middle Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State Province".to_s, :count => 2
    assert_select "tr>td", :text => "Postal Code".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Phone1".to_s, :count => 2
    assert_select "tr>td", :text => "Phone2".to_s, :count => 2
    assert_select "tr>td", :text => "Email1".to_s, :count => 2
    assert_select "tr>td", :text => "Email2".to_s, :count => 2
  end
end
