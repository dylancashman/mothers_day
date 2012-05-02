require 'spec_helper'

describe "celebrations/index" do
  before(:each) do
    assign(:celebrations, [
      stub_model(Celebration,
        :name => "Name",
        :email_address => "Email Address",
        :message => "MyText"
      ),
      stub_model(Celebration,
        :name => "Name",
        :email_address => "Email Address",
        :message => "MyText"
      )
    ])
  end

  it "renders a list of celebrations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email Address".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
