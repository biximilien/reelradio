require 'spec_helper'

describe "episodes/edit" do
  before(:each) do
    @episode = assign(:episode, stub_model(Episode,
      :title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit episode form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", episode_path(@episode), "post" do
      assert_select "input#episode_title[name=?]", "episode[title]"
      assert_select "textarea#episode_content[name=?]", "episode[content]"
    end
  end
end
