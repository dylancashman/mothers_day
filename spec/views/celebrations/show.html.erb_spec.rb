require 'spec_helper'

describe "celebrations/show" do
  before(:each) do
    @celebration = assign(:celebration, stub_model(Celebration,
      :name => "Name",
      :email_address => "Email Address",
      :message => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email Address/)
    rendered.should match(/MyText/)
  end
end
