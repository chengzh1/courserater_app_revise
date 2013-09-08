# == Schema Information
#
# Table name: courses
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Course < ActiveRecord::Base
  attr_accessible :description, :name
  validates :name,  presence: true, length: { maximum: 50 }, uniqueness: true
  validates :description, length: { maximum: 140 }
  has_many :raters, dependent: :destroy
    #对uniquess 的处理没有在数据库做(list 6.22)
end
