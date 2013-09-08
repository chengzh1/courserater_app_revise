class Rater < ActiveRecord::Base
  attr_accessible :course_id, :question1, :question2, :question4, :questiong3
  belongs_to :course
end
