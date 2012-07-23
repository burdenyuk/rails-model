require 'spec_helper'

describe "admin/products/edit.html.erb" do
  before(:each) do
    @admin_product = assign(:admin_product, stub_model(Admin::Product,
      :name => "MyString",
      :code => "MyString",
      :type => "MyString",
      :desc => "MyText"
    ))
  end

  it "renders the edit admin_product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_products_path(@admin_product), :method => "post" do
      assert_select "input#admin_product_name", :name => "admin_product[name]"
      assert_select "input#admin_product_code", :name => "admin_product[code]"
      assert_select "input#admin_product_type", :name => "admin_product[type]"
      assert_select "textarea#admin_product_desc", :name => "admin_product[desc]"
    end
  end
end
