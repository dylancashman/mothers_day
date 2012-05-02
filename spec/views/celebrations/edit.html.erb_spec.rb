require 'spec_helper'

describe "celebrations/edit" do
  before(:each) do
    @celebration = assign(:celebration, stub_model(Celebration,
      :name => "MyString",
      :email_address => "MyString",
      :message => "MyText"
    ))
  end

  it "renders the edit celebration form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => celebrations_path(@celebration), :method => "post" do
      assert_select "input#celebration_name", :name => "celebration[name]"
      assert_select "input#celebration_email_address", :name => "celebration[email_address]"
      assert_select "textarea#celebration_message", :name => "celebration[message]"
    end
  end
end
