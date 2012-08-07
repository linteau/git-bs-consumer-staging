require 'spec_helper'

describe "partners/new" do
  before(:each) do
    assign(:partner, stub_model(Partner,
      :partner_name => "MyString",
      :website => "MyString",
      :description => "MyText",
      :title => "MyString",
      :address1 => "MyString",
      :address2 => "MyString",
      :city => "MyString",
      :state_province => "MyString",
      :postal_code => "MyString",
      :country => "MyString",
      :phone1 => "MyString",
      :phone2 => "MyString",
      :tax_id => "MyString"
    ).as_new_record)
  end

  it "renders new partner form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => partners_path, :method => "post" do
      assert_select "input#partner_partner_name", :name => "partner[partner_name]"
      assert_select "input#partner_website", :name => "partner[website]"
      assert_select "textarea#partner_description", :name => "partner[description]"
      assert_select "input#partner_title", :name => "partner[title]"
      assert_select "input#partner_address1", :name => "partner[address1]"
      assert_select "input#partner_address2", :name => "partner[address2]"
      assert_select "input#partner_city", :name => "partner[city]"
      assert_select "input#partner_state_province", :name => "partner[state_province]"
      assert_select "input#partner_postal_code", :name => "partner[postal_code]"
      assert_select "input#partner_country", :name => "partner[country]"
      assert_select "input#partner_phone1", :name => "partner[phone1]"
      assert_select "input#partner_phone2", :name => "partner[phone2]"
      assert_select "input#partner_tax_id", :name => "partner[tax_id]"
    end
  end
end
