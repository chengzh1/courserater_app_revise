require 'spec_helper'

describe "raters/edit" do
  before(:each) do
    @rater = assign(:rater, stub_model(Rater,
      :question1 => 1,
      :question2 => 1,
      :questiong3 => 1,
      :question4 => "MyString",
      :course_id => 1
    ))
  end

  it "renders the edit rater form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => raters_path(@rater), :method => "post" do
      assert_select "input#rater_question1", :name => "rater[question1]"
      assert_select "input#rater_question2", :name => "rater[question2]"
      assert_select "input#rater_questiong3", :name => "rater[questiong3]"
      assert_select "input#rater_question4", :name => "rater[question4]"
      assert_select "input#rater_course_id", :name => "rater[course_id]"
    end
  end
end
