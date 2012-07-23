require 'spec_helper'

describe "admin/products/new.html.erb" do
  before(:each) do
    assign(:admin_product, stub_model(Admin::Product,
      :name => "MyString",
      :code => "MyString",
      :type => "MyString",
      :desc => "MyText"
    ).as_new_record)
  end

  it "renders new admin_product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_products_path, :method => "post" do
      assert_select "input#admin_product_name", :name => "admin_product[name]"
      assert_select "input#admin_product_code", :name => "admin_product[code]"
      assert_select "input#admin_product_type", :name => "admin_product[type]"
      assert_select "textarea#admin_product_desc", :name => "admin_product[desc]"
    end
  end
end
