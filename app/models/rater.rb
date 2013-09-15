# == Schema Information
#
# Table name: raters
#
#  id         :integer          not null, primary key
#  question1  :integer
#  question2  :integer
#  questiong3 :integer
#  question4  :string(255)
#  course_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Rater < ActiveRecord::Base
    attr_accessible :course_id, :user_id, :question1, :question2, :question4,
    :questiong3
    #c:course_id被注解
    validates :course_id, presence: true
    #validates :user_id, presence: true
    validates :question1,  presence: true, numericality:{:greater_than=>0, :less_than=>11}
    validates :question2,  presence: true
    validates :questiong3,  presence: true, length: { maximum: 150 }
    validates :question4,  presence: true, length: { maximum: 150 }
    
    belongs_to :course
    belongs_to :user
    
    default_scope order: 'raters.created_at DESC'
end
