require 'spec_helper'

describe "microposts/edit.html.erb" do
  before(:each) do
    @micropost = assign(:micropost, stub_model(Micropost,
      :title => "MyString",
      :message => "MyText",
      :user_id => 1
    ))
  end

  it "renders the edit micropost form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => microposts_path(@micropost), :method => "post" do
      assert_select "input#micropost_title", :name => "micropost[title]"
      assert_select "textarea#micropost_message", :name => "micropost[message]"
      assert_select "input#micropost_user_id", :name => "micropost[user_id]"
    end
  end
end
