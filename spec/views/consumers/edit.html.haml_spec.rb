require 'spec_helper'

describe "consumers/edit" do
  before(:each) do
    @consumer = assign(:consumer, stub_model(Consumer,
      :first_name => "MyString",
      :middle_name => "MyString",
      :last_name => "MyString",
      :user_id => 1,
      :stripe_customer_id => 1,
      :title => "MyString",
      :address1 => "MyString",
      :address2 => "MyString",
      :city => "MyString",
      :state_province => "MyString",
      :postal_code => "MyString",
      :country => "MyString",
      :phone1 => "MyString",
      :phone2 => "MyString",
      :email1 => "MyString",
      :email2 => "MyString"
    ))
  end

  it "renders the edit consumer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => consumers_path(@consumer), :method => "post" do
      assert_select "input#consumer_first_name", :name => "consumer[first_name]"
      assert_select "input#consumer_middle_name", :name => "consumer[middle_name]"
      assert_select "input#consumer_last_name", :name => "consumer[last_name]"
      assert_select "input#consumer_user_id", :name => "consumer[user_id]"
      assert_select "input#consumer_stripe_customer_id", :name => "consumer[stripe_customer_id]"
      assert_select "input#consumer_title", :name => "consumer[title]"
      assert_select "input#consumer_address1", :name => "consumer[address1]"
      assert_select "input#consumer_address2", :name => "consumer[address2]"
      assert_select "input#consumer_city", :name => "consumer[city]"
      assert_select "input#consumer_state_province", :name => "consumer[state_province]"
      assert_select "input#consumer_postal_code", :name => "consumer[postal_code]"
      assert_select "input#consumer_country", :name => "consumer[country]"
      assert_select "input#consumer_phone1", :name => "consumer[phone1]"
      assert_select "input#consumer_phone2", :name => "consumer[phone2]"
      assert_select "input#consumer_email1", :name => "consumer[email1]"
      assert_select "input#consumer_email2", :name => "consumer[email2]"
    end
  end
end
