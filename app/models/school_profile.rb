# == Schema Information
#
# Table name: school_profiles
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  department :string(255)
#  graduation :date
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class SchoolProfile < ActiveRecord::Base
  belongs_to :user
end
