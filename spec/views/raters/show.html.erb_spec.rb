require 'spec_helper'

describe "raters/show" do
  before(:each) do
    @rater = assign(:rater, stub_model(Rater,
      :question1 => 1,
      :question2 => 2,
      :questiong3 => 3,
      :question4 => "Question4",
      :course_id => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Question4/)
    rendered.should match(/4/)
  end
end
