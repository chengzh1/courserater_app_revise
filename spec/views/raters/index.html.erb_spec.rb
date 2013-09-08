require 'spec_helper'

describe "raters/index" do
  before(:each) do
    assign(:raters, [
      stub_model(Rater,
        :question1 => 1,
        :question2 => 2,
        :questiong3 => 3,
        :question4 => "Question4",
        :course_id => 4
      ),
      stub_model(Rater,
        :question1 => 1,
        :question2 => 2,
        :questiong3 => 3,
        :question4 => "Question4",
        :course_id => 4
      )
    ])
  end

  it "renders a list of raters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Question4".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
