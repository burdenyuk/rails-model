require 'spec_helper'

describe "admin/products/index.html.erb" do
  before(:each) do
    assign(:admin_products, [
      stub_model(Admin::Product,
        :name => "Name",
        :code => "Code",
        :type => "Type",
        :desc => "MyText"
      ),
      stub_model(Admin::Product,
        :name => "Name",
        :code => "Code",
        :type => "Type",
        :desc => "MyText"
      )
    ])
  end

  it "renders a list of admin/products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
