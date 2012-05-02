require 'spec_helper'

describe "celebrations/new" do
  before(:each) do
    assign(:celebration, stub_model(Celebration,
      :name => "MyString",
      :email_address => "MyString",
      :message => "MyText"
    ).as_new_record)
  end

  it "renders new celebration form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => celebrations_path, :method => "post" do
      assert_select "input#celebration_name", :name => "celebration[name]"
      assert_select "input#celebration_email_address", :name => "celebration[email_address]"
      assert_select "textarea#celebration_message", :name => "celebration[message]"
    end
  end
end
