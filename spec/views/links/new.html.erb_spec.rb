require 'spec_helper'

describe "links/new" do
  before(:each) do
    assign(:link, stub_model(Link,
      :name => "MyString",
      :read => false,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => links_path, :method => "post" do
      assert_select "input#link_name", :name => "link[name]"
      assert_select "input#link_read", :name => "link[read]"
      assert_select "input#link_user_id", :name => "link[user_id]"
    end
  end
end
