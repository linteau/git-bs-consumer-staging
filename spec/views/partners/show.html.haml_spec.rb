require 'spec_helper'

describe "partners/show" do
  before(:each) do
    @partner = assign(:partner, stub_model(Partner,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Partner Name/)
    rendered.should match(/Website/)
    rendered.should match(/MyText/)
    rendered.should match(/Title/)
    rendered.should match(/Address1/)
    rendered.should match(/Address2/)
    rendered.should match(/City/)
    rendered.should match(/State Province/)
    rendered.should match(/Postal Code/)
    rendered.should match(/Country/)
    rendered.should match(/Phone1/)
    rendered.should match(/Phone2/)
    rendered.should match(/Tax/)
  end
end
