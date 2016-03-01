# == Schema Information
#
# Table name: user_profiles
#
#  id                :integer          not null, primary key
#  school_name       :string(255)
#  school_type       :integer
#  school_department :string(255)
#  school_status     :integer
#  birthday          :date
#  user_id           :integer
#  created_at        :datetime
#  updated_at        :datetime
#

class UserProfile < ActiveRecord::Base
  belongs_to :user
  
  validates :school_name, presence: true
  validates :school_type, presence: true
  validates :school_department, presence: true
  validates :school_status, presence: true
  validates :birthday, presence: true
end
