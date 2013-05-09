require 'spec_helper'

describe "episodes/new" do
  before(:each) do
    assign(:episode, stub_model(Episode,
      :title => "MyString",
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new episode form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", episodes_path, "post" do
      assert_select "input#episode_title[name=?]", "episode[title]"
      assert_select "textarea#episode_content[name=?]", "episode[content]"
    end
  end
end
