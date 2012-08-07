require 'spec_helper'

describe "consumers/show" do
  before(:each) do
    @consumer = assign(:consumer, stub_model(Consumer,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Middle Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Title/)
    rendered.should match(/Address1/)
    rendered.should match(/Address2/)
    rendered.should match(/City/)
    rendered.should match(/State Province/)
    rendered.should match(/Postal Code/)
    rendered.should match(/Country/)
    rendered.should match(/Phone1/)
    rendered.should match(/Phone2/)
    rendered.should match(/Email1/)
    rendered.should match(/Email2/)
  end
end
