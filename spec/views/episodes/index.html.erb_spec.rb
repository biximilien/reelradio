require 'spec_helper'

describe "episodes/index" do
  before(:each) do
    assign(:episodes, [
      stub_model(Episode,
        :title => "Title",
        :content => "MyText"
      ),
      stub_model(Episode,
        :title => "Title",
        :content => "MyText"
      )
    ])
  end

  it "renders a list of episodes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
