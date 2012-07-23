require 'spec_helper'

describe "admin/products/show.html.erb" do
  before(:each) do
    @admin_product = assign(:admin_product, stub_model(Admin::Product,
      :name => "Name",
      :code => "Code",
      :type => "Type",
      :desc => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
